
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int net; int data; } ;
struct qmi_wwan_state {int flags; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int EBUSY ;
 size_t EINVAL ;
 int NETDEV_POST_TYPE_CHANGE ;
 int NETDEV_PRE_TYPE_CHANGE ;
 int QMI_WWAN_FLAG_RAWIP ;
 int call_netdevice_notifiers (int ,int ) ;
 int netdev_err (int ,char*) ;
 struct usbnet* netdev_priv (int ) ;
 scalar_t__ netif_running (int ) ;
 int notifier_to_errno (int) ;
 int qmi_wwan_netdev_setup (int ) ;
 size_t restart_syscall () ;
 int rtnl_trylock () ;
 int rtnl_unlock () ;
 scalar_t__ strtobool (char const*,int*) ;
 int to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t raw_ip_store(struct device *d, struct device_attribute *attr, const char *buf, size_t len)
{
 struct usbnet *dev = netdev_priv(to_net_dev(d));
 struct qmi_wwan_state *info = (void *)&dev->data;
 bool enable;
 int ret;

 if (strtobool(buf, &enable))
  return -EINVAL;


 if (enable == (info->flags & QMI_WWAN_FLAG_RAWIP))
  return len;

 if (!rtnl_trylock())
  return restart_syscall();


 if (netif_running(dev->net)) {
  netdev_err(dev->net, "Cannot change a running device\n");
  ret = -EBUSY;
  goto err;
 }


 ret = call_netdevice_notifiers(NETDEV_PRE_TYPE_CHANGE, dev->net);
 ret = notifier_to_errno(ret);
 if (ret) {
  netdev_err(dev->net, "Type change was refused\n");
  goto err;
 }

 if (enable)
  info->flags |= QMI_WWAN_FLAG_RAWIP;
 else
  info->flags &= ~QMI_WWAN_FLAG_RAWIP;
 qmi_wwan_netdev_setup(dev->net);
 call_netdevice_notifiers(NETDEV_POST_TYPE_CHANGE, dev->net);
 ret = len;
err:
 rtnl_unlock();
 return ret;
}
