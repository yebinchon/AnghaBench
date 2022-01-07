
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {int tmreg_lock; int hw_cc; int base_incval; struct ixgbe_hw hw; } ;
struct cyclecounter {int mult; int shift; void* read; int mask; } ;


 int BIT (int ) ;
 int CLOCKSOURCE_MASK (int) ;
 int IXGBE_EIMS ;
 int IXGBE_EIMS_TIMESYNC ;
 int IXGBE_FUSES0_300MHZ ;
 int IXGBE_FUSES0_GROUP (int ) ;
 int IXGBE_INCPER_SHIFT_82599 ;
 int IXGBE_INCVAL_SHIFT_82599 ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SYSTIMH ;
 int IXGBE_SYSTIML ;
 int IXGBE_SYSTIMR ;
 int IXGBE_TIMINCA ;
 int IXGBE_TSAUXC ;
 int IXGBE_TSAUXC_DISABLE_SYSTIME ;
 int IXGBE_TSIM ;
 int IXGBE_TSIM_TXTS ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int WRITE_ONCE (int ,int) ;





 int ixgbe_ptp_link_speed_adjust (struct ixgbe_adapter*,int*,int*) ;
 void* ixgbe_ptp_read_82599 ;
 void* ixgbe_ptp_read_X550 ;
 int memcpy (int *,struct cyclecounter*,int) ;
 int smp_mb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ixgbe_ptp_start_cyclecounter(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 struct cyclecounter cc;
 unsigned long flags;
 u32 incval = 0;
 u32 tsauxc = 0;
 u32 fuse0 = 0;
 cc.mask = CLOCKSOURCE_MASK(64);
 cc.mult = 1;
 cc.shift = 0;

 switch (hw->mac.type) {
 case 129:






  fuse0 = IXGBE_READ_REG(hw, IXGBE_FUSES0_GROUP(0));
  if (!(fuse0 & IXGBE_FUSES0_300MHZ)) {
   cc.mult = 3;
   cc.shift = 2;
  }

 case 128:
 case 130:
  cc.read = ixgbe_ptp_read_X550;


  IXGBE_WRITE_REG(hw, IXGBE_SYSTIMR, 0);
  IXGBE_WRITE_REG(hw, IXGBE_SYSTIML, 0);
  IXGBE_WRITE_REG(hw, IXGBE_SYSTIMH, 0);
  tsauxc = IXGBE_READ_REG(hw, IXGBE_TSAUXC);
  IXGBE_WRITE_REG(hw, IXGBE_TSAUXC,
    tsauxc & ~IXGBE_TSAUXC_DISABLE_SYSTIME);
  IXGBE_WRITE_REG(hw, IXGBE_TSIM, IXGBE_TSIM_TXTS);
  IXGBE_WRITE_REG(hw, IXGBE_EIMS, IXGBE_EIMS_TIMESYNC);

  IXGBE_WRITE_FLUSH(hw);
  break;
 case 131:
  cc.read = ixgbe_ptp_read_82599;

  ixgbe_ptp_link_speed_adjust(adapter, &cc.shift, &incval);
  IXGBE_WRITE_REG(hw, IXGBE_TIMINCA, incval);
  break;
 case 132:
  cc.read = ixgbe_ptp_read_82599;

  ixgbe_ptp_link_speed_adjust(adapter, &cc.shift, &incval);
  incval >>= IXGBE_INCVAL_SHIFT_82599;
  cc.shift -= IXGBE_INCVAL_SHIFT_82599;
  IXGBE_WRITE_REG(hw, IXGBE_TIMINCA,
    BIT(IXGBE_INCPER_SHIFT_82599) | incval);
  break;
 default:

  return;
 }


 WRITE_ONCE(adapter->base_incval, incval);
 smp_mb();


 spin_lock_irqsave(&adapter->tmreg_lock, flags);
 memcpy(&adapter->hw_cc, &cc, sizeof(adapter->hw_cc));
 spin_unlock_irqrestore(&adapter->tmreg_lock, flags);
}
