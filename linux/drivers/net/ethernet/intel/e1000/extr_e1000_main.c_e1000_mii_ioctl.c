
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct mii_ioctl_data {int reg_num; int val_in; int val_out; int phy_id; } ;
struct ifreq {int dummy; } ;
struct e1000_hw {scalar_t__ media_type; int autoneg; int autoneg_advertised; int phy_addr; } ;
struct e1000_adapter {int netdev; int stats_lock; struct e1000_hw hw; } ;


 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int E1000_SUCCESS ;
 int EFAULT ;
 int EIO ;
 int EOPNOTSUPP ;


 int MII_CR_AUTO_NEG_EN ;
 int MII_CR_POWER_DOWN ;




 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 scalar_t__ e1000_media_type_copper ;
 int e1000_phy_reset (struct e1000_hw*) ;
 int e1000_read_phy_reg (struct e1000_hw*,int,int *) ;
 int e1000_reinit_locked (struct e1000_adapter*) ;
 int e1000_reset (struct e1000_adapter*) ;
 int e1000_set_spd_dplx (struct e1000_adapter*,int ,int ) ;
 int e1000_write_phy_reg (struct e1000_hw*,int,int) ;
 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 int netif_running (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int e1000_mii_ioctl(struct net_device *netdev, struct ifreq *ifr,
      int cmd)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 struct mii_ioctl_data *data = if_mii(ifr);
 int retval;
 u16 mii_reg;
 unsigned long flags;

 if (hw->media_type != e1000_media_type_copper)
  return -EOPNOTSUPP;

 switch (cmd) {
 case 130:
  data->phy_id = hw->phy_addr;
  break;
 case 129:
  spin_lock_irqsave(&adapter->stats_lock, flags);
  if (e1000_read_phy_reg(hw, data->reg_num & 0x1F,
       &data->val_out)) {
   spin_unlock_irqrestore(&adapter->stats_lock, flags);
   return -EIO;
  }
  spin_unlock_irqrestore(&adapter->stats_lock, flags);
  break;
 case 128:
  if (data->reg_num & ~(0x1F))
   return -EFAULT;
  mii_reg = data->val_in;
  spin_lock_irqsave(&adapter->stats_lock, flags);
  if (e1000_write_phy_reg(hw, data->reg_num,
     mii_reg)) {
   spin_unlock_irqrestore(&adapter->stats_lock, flags);
   return -EIO;
  }
  spin_unlock_irqrestore(&adapter->stats_lock, flags);
  if (hw->media_type == e1000_media_type_copper) {
   switch (data->reg_num) {
   case 131:
    if (mii_reg & MII_CR_POWER_DOWN)
     break;
    if (mii_reg & MII_CR_AUTO_NEG_EN) {
     hw->autoneg = 1;
     hw->autoneg_advertised = 0x2F;
    } else {
     u32 speed;
     if (mii_reg & 0x40)
      speed = SPEED_1000;
     else if (mii_reg & 0x2000)
      speed = SPEED_100;
     else
      speed = SPEED_10;
     retval = e1000_set_spd_dplx(
      adapter, speed,
      ((mii_reg & 0x100)
       ? DUPLEX_FULL :
       DUPLEX_HALF));
     if (retval)
      return retval;
    }
    if (netif_running(adapter->netdev))
     e1000_reinit_locked(adapter);
    else
     e1000_reset(adapter);
    break;
   case 132:
   case 133:
    if (e1000_phy_reset(hw))
     return -EIO;
    break;
   }
  } else {
   switch (data->reg_num) {
   case 131:
    if (mii_reg & MII_CR_POWER_DOWN)
     break;
    if (netif_running(adapter->netdev))
     e1000_reinit_locked(adapter);
    else
     e1000_reset(adapter);
    break;
   }
  }
  break;
 default:
  return -EOPNOTSUPP;
 }
 return E1000_SUCCESS;
}
