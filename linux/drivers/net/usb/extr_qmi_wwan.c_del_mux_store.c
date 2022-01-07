
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int net; int data; } ;
struct qmi_wwan_state {int flags; } ;
struct net_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EBUSY ;
 int EINVAL ;
 int QMI_WWAN_FLAG_MUX ;
 scalar_t__ kstrtou8 (char const*,int ,int *) ;
 int netdev_err (int ,char*) ;
 struct usbnet* netdev_priv (int ) ;
 scalar_t__ netif_running (int ) ;
 struct net_device* qmimux_find_dev (struct usbnet*,int ) ;
 int qmimux_has_slaves (struct usbnet*) ;
 int qmimux_unregister_device (struct net_device*,int *) ;
 int restart_syscall () ;
 int rtnl_trylock () ;
 int rtnl_unlock () ;
 int to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t del_mux_store(struct device *d, struct device_attribute *attr, const char *buf, size_t len)
{
 struct usbnet *dev = netdev_priv(to_net_dev(d));
 struct qmi_wwan_state *info = (void *)&dev->data;
 struct net_device *del_dev;
 u8 mux_id;
 int ret = 0;

 if (kstrtou8(buf, 0, &mux_id))
  return -EINVAL;

 if (!rtnl_trylock())
  return restart_syscall();


 if (netif_running(dev->net)) {
  netdev_err(dev->net, "Cannot change a running device\n");
  ret = -EBUSY;
  goto err;
 }

 del_dev = qmimux_find_dev(dev, mux_id);
 if (!del_dev) {
  netdev_err(dev->net, "mux_id not present\n");
  ret = -EINVAL;
  goto err;
 }
 qmimux_unregister_device(del_dev, ((void*)0));

 if (!qmimux_has_slaves(dev))
  info->flags &= ~QMI_WWAN_FLAG_MUX;
 ret = len;
err:
 rtnl_unlock();
 return ret;
}
