
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mii_ioctl_data {int reg_num; int val_in; int phy_id; int val_out; } ;
struct ksz_port {TYPE_1__* linked; } ;
struct ksz_hw {int dummy; } ;
struct ifreq {int dummy; } ;
struct dev_priv {int proc_sem; int id; struct ksz_port port; struct dev_info* adapter; } ;
struct dev_info {struct ksz_hw hw; } ;
struct TYPE_2__ {int port_id; } ;


 int CAP_NET_ADMIN ;
 int EIO ;
 int EOPNOTSUPP ;
 int EPERM ;
 int ERESTARTSYS ;



 int capable (int ) ;
 scalar_t__ down_interruptible (int *) ;
 int hw_r_phy (struct ksz_hw*,int ,int,int *) ;
 int hw_w_phy (struct ksz_hw*,int ,int,int ) ;
 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 struct dev_priv* netdev_priv (struct net_device*) ;
 int up (int *) ;

__attribute__((used)) static int netdev_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 struct dev_priv *priv = netdev_priv(dev);
 struct dev_info *hw_priv = priv->adapter;
 struct ksz_hw *hw = &hw_priv->hw;
 struct ksz_port *port = &priv->port;
 int result = 0;
 struct mii_ioctl_data *data = if_mii(ifr);

 if (down_interruptible(&priv->proc_sem))
  return -ERESTARTSYS;

 switch (cmd) {

 case 130:
  data->phy_id = priv->id;




 case 129:
  if (data->phy_id != priv->id || data->reg_num >= 6)
   result = -EIO;
  else
   hw_r_phy(hw, port->linked->port_id, data->reg_num,
    &data->val_out);
  break;


 case 128:
  if (!capable(CAP_NET_ADMIN))
   result = -EPERM;
  else if (data->phy_id != priv->id || data->reg_num >= 6)
   result = -EIO;
  else
   hw_w_phy(hw, port->linked->port_id, data->reg_num,
    data->val_in);
  break;

 default:
  result = -EOPNOTSUPP;
 }

 up(&priv->proc_sem);

 return result;
}
