
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int net; int data; } ;
struct qmi_wwan_state {int flags; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EBUSY ;
 int EINVAL ;
 int QMI_WWAN_FLAG_MUX ;
 scalar_t__ kstrtou8 (char const*,int ,int*) ;
 int netdev_err (int ,char*) ;
 struct usbnet* netdev_priv (int ) ;
 scalar_t__ netif_running (int ) ;
 scalar_t__ qmimux_find_dev (struct usbnet*,int) ;
 int qmimux_register_device (int ,int) ;
 int restart_syscall () ;
 int rtnl_trylock () ;
 int rtnl_unlock () ;
 int to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t add_mux_store(struct device *d, struct device_attribute *attr, const char *buf, size_t len)
{
 struct usbnet *dev = netdev_priv(to_net_dev(d));
 struct qmi_wwan_state *info = (void *)&dev->data;
 u8 mux_id;
 int ret;

 if (kstrtou8(buf, 0, &mux_id))
  return -EINVAL;


 if (mux_id < 1 || mux_id > 254)
  return -EINVAL;

 if (!rtnl_trylock())
  return restart_syscall();

 if (qmimux_find_dev(dev, mux_id)) {
  netdev_err(dev->net, "mux_id already present\n");
  ret = -EINVAL;
  goto err;
 }


 if (netif_running(dev->net)) {
  netdev_err(dev->net, "Cannot change a running device\n");
  ret = -EBUSY;
  goto err;
 }

 ret = qmimux_register_device(dev->net, mux_id);
 if (!ret) {
  info->flags |= QMI_WWAN_FLAG_MUX;
  ret = len;
 }
err:
 rtnl_unlock();
 return ret;
}
