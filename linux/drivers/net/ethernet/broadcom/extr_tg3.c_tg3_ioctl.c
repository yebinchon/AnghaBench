
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int phy_flags; int phy_addr; int lock; int mdio_bus; } ;
struct phy_device {int dummy; } ;
struct net_device {int dummy; } ;
struct mii_ioctl_data {int phy_id; int reg_num; int val_in; int val_out; } ;
struct ifreq {int dummy; } ;


 int EAGAIN ;
 int EOPNOTSUPP ;





 int TG3_PHYFLG_IS_CONNECTED ;
 int TG3_PHYFLG_PHY_SERDES ;
 int USE_PHYLIB ;
 int __tg3_readphy (struct tg3*,int,int,int *) ;
 int __tg3_writephy (struct tg3*,int,int,int ) ;
 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 struct phy_device* mdiobus_get_phy (int ,int) ;
 struct tg3* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int phy_mii_ioctl (struct phy_device*,struct ifreq*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ tg3_flag (struct tg3*,int ) ;
 int tg3_hwtstamp_get (struct net_device*,struct ifreq*) ;
 int tg3_hwtstamp_set (struct net_device*,struct ifreq*) ;

__attribute__((used)) static int tg3_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 struct mii_ioctl_data *data = if_mii(ifr);
 struct tg3 *tp = netdev_priv(dev);
 int err;

 if (tg3_flag(tp, USE_PHYLIB)) {
  struct phy_device *phydev;
  if (!(tp->phy_flags & TG3_PHYFLG_IS_CONNECTED))
   return -EAGAIN;
  phydev = mdiobus_get_phy(tp->mdio_bus, tp->phy_addr);
  return phy_mii_ioctl(phydev, ifr, cmd);
 }

 switch (cmd) {
 case 131:
  data->phy_id = tp->phy_addr;


 case 130: {
  u32 mii_regval;

  if (tp->phy_flags & TG3_PHYFLG_PHY_SERDES)
   break;

  if (!netif_running(dev))
   return -EAGAIN;

  spin_lock_bh(&tp->lock);
  err = __tg3_readphy(tp, data->phy_id & 0x1f,
        data->reg_num & 0x1f, &mii_regval);
  spin_unlock_bh(&tp->lock);

  data->val_out = mii_regval;

  return err;
 }

 case 128:
  if (tp->phy_flags & TG3_PHYFLG_PHY_SERDES)
   break;

  if (!netif_running(dev))
   return -EAGAIN;

  spin_lock_bh(&tp->lock);
  err = __tg3_writephy(tp, data->phy_id & 0x1f,
         data->reg_num & 0x1f, data->val_in);
  spin_unlock_bh(&tp->lock);

  return err;

 case 129:
  return tg3_hwtstamp_set(dev, ifr);

 case 132:
  return tg3_hwtstamp_get(dev, ifr);

 default:

  break;
 }
 return -EOPNOTSUPP;
}
