
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sis900_private {TYPE_1__* mii; } ;
struct net_device {int dummy; } ;
struct mii_ioctl_data {int phy_id; int reg_num; int val_in; int val_out; } ;
struct ifreq {int dummy; } ;
struct TYPE_2__ {int phy_addr; } ;


 int EOPNOTSUPP ;



 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 int mdio_read (struct net_device*,int,int) ;
 int mdio_write (struct net_device*,int,int,int ) ;
 struct sis900_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mii_ioctl(struct net_device *net_dev, struct ifreq *rq, int cmd)
{
 struct sis900_private *sis_priv = netdev_priv(net_dev);
 struct mii_ioctl_data *data = if_mii(rq);

 switch(cmd) {
 case 130:
  data->phy_id = sis_priv->mii->phy_addr;


 case 129:
  data->val_out = mdio_read(net_dev, data->phy_id & 0x1f, data->reg_num & 0x1f);
  return 0;

 case 128:
  mdio_write(net_dev, data->phy_id & 0x1f, data->reg_num & 0x1f, data->val_in);
  return 0;
 default:
  return -EOPNOTSUPP;
 }
}
