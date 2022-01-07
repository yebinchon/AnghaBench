
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct atl2_hw {int mii_autoneg_adv_reg; } ;
struct atl2_adapter {int cfg_phy; int stats_lock; struct atl2_hw hw; } ;


 int MII_ADVERTISE ;
 int MII_BMCR ;
 int MII_CR_AUTO_NEG_EN ;
 int MII_CR_RESET ;
 int MII_CR_RESTART_AUTO_NEG ;
 struct atl2_adapter* adapter ;
 int atl2_write_phy_reg (struct atl2_hw*,int ,int) ;
 int clear_bit (int ,int *) ;
 struct atl2_adapter* from_timer (int ,struct timer_list*,int ) ;
 int phy_config_timer ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void atl2_phy_config(struct timer_list *t)
{
 struct atl2_adapter *adapter = from_timer(adapter, t,
        phy_config_timer);
 struct atl2_hw *hw = &adapter->hw;
 unsigned long flags;

 spin_lock_irqsave(&adapter->stats_lock, flags);
 atl2_write_phy_reg(hw, MII_ADVERTISE, hw->mii_autoneg_adv_reg);
 atl2_write_phy_reg(hw, MII_BMCR, MII_CR_RESET | MII_CR_AUTO_NEG_EN |
  MII_CR_RESTART_AUTO_NEG);
 spin_unlock_irqrestore(&adapter->stats_lock, flags);
 clear_bit(0, &adapter->cfg_phy);
}
