
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct mii_ioctl_data {int reg_num; int val_in; int phy_id; int val_out; } ;
struct ifreq {int dummy; } ;
struct amd8111e_priv {int lock; int ext_phy_addr; } ;


 int EOPNOTSUPP ;
 int PHY_REG_ADDR_MASK ;



 int amd8111e_read_phy (struct amd8111e_priv*,int ,int,int *) ;
 int amd8111e_write_phy (struct amd8111e_priv*,int ,int,int ) ;
 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 struct amd8111e_priv* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int amd8111e_ioctl(struct net_device *dev , struct ifreq *ifr, int cmd)
{
 struct mii_ioctl_data *data = if_mii(ifr);
 struct amd8111e_priv *lp = netdev_priv(dev);
 int err;
 u32 mii_regval;

 switch(cmd) {
 case 130:
  data->phy_id = lp->ext_phy_addr;


 case 129:

  spin_lock_irq(&lp->lock);
  err = amd8111e_read_phy(lp, data->phy_id,
   data->reg_num & PHY_REG_ADDR_MASK, &mii_regval);
  spin_unlock_irq(&lp->lock);

  data->val_out = mii_regval;
  return err;

 case 128:

  spin_lock_irq(&lp->lock);
  err = amd8111e_write_phy(lp, data->phy_id,
   data->reg_num & PHY_REG_ADDR_MASK, data->val_in);
  spin_unlock_irq(&lp->lock);

  return err;

 default:

  break;
 }
 return -EOPNOTSUPP;
}
