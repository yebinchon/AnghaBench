
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct atl1_hw {int mii_autoneg_adv_reg; int mii_1000t_ctrl_reg; } ;
struct atl1_adapter {int phy_timer_pending; int lock; struct atl1_hw hw; } ;


 int MII_ADVERTISE ;
 int MII_ATLX_CR ;
 int MII_BMCR ;
 int MII_CR_AUTO_NEG_EN ;
 int MII_CR_RESET ;
 struct atl1_adapter* adapter ;
 int atl1_write_phy_reg (struct atl1_hw*,int ,int) ;
 struct atl1_adapter* from_timer (int ,struct timer_list*,int ) ;
 int phy_config_timer ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void atl1_phy_config(struct timer_list *t)
{
 struct atl1_adapter *adapter = from_timer(adapter, t,
        phy_config_timer);
 struct atl1_hw *hw = &adapter->hw;
 unsigned long flags;

 spin_lock_irqsave(&adapter->lock, flags);
 adapter->phy_timer_pending = 0;
 atl1_write_phy_reg(hw, MII_ADVERTISE, hw->mii_autoneg_adv_reg);
 atl1_write_phy_reg(hw, MII_ATLX_CR, hw->mii_1000t_ctrl_reg);
 atl1_write_phy_reg(hw, MII_BMCR, MII_CR_RESET | MII_CR_AUTO_NEG_EN);
 spin_unlock_irqrestore(&adapter->lock, flags);
}
