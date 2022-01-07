
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8152 {int intf; int control; int flags; } ;
struct net_device {int dummy; } ;
struct mii_ioctl_data {int val_in; int reg_num; int val_out; int phy_id; } ;
struct ifreq {int dummy; } ;


 int CAP_NET_ADMIN ;
 int ENODEV ;
 int EOPNOTSUPP ;
 int EPERM ;
 int R8152_PHY_ID ;
 int RTL8152_UNPLUG ;



 int capable (int ) ;
 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct r8152* netdev_priv (struct net_device*) ;
 int r8152_mdio_read (struct r8152*,int ) ;
 int r8152_mdio_write (struct r8152*,int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;

__attribute__((used)) static int rtl8152_ioctl(struct net_device *netdev, struct ifreq *rq, int cmd)
{
 struct r8152 *tp = netdev_priv(netdev);
 struct mii_ioctl_data *data = if_mii(rq);
 int res;

 if (test_bit(RTL8152_UNPLUG, &tp->flags))
  return -ENODEV;

 res = usb_autopm_get_interface(tp->intf);
 if (res < 0)
  goto out;

 switch (cmd) {
 case 130:
  data->phy_id = R8152_PHY_ID;
  break;

 case 129:
  mutex_lock(&tp->control);
  data->val_out = r8152_mdio_read(tp, data->reg_num);
  mutex_unlock(&tp->control);
  break;

 case 128:
  if (!capable(CAP_NET_ADMIN)) {
   res = -EPERM;
   break;
  }
  mutex_lock(&tp->control);
  r8152_mdio_write(tp, data->reg_num, data->val_in);
  mutex_unlock(&tp->control);
  break;

 default:
  res = -EOPNOTSUPP;
 }

 usb_autopm_put_interface(tp->intf);

out:
 return res;
}
