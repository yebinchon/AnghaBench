
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
typedef int u16 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int IXGBE_DTXCTL ;
 int IXGBE_DTXCTL_ENDBUBD ;
 int IXGBE_PDPMCS ;
 int IXGBE_PDPMCS_ARBDIS ;
 int IXGBE_PDPMCS_TPPAC ;
 int IXGBE_PDPMCS_TRM ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_TDPT2TCCR (size_t) ;
 int IXGBE_TDPT2TCCR_BWG_SHIFT ;
 int IXGBE_TDPT2TCCR_GSP ;
 int IXGBE_TDPT2TCCR_LSP ;
 int IXGBE_TDPT2TCCR_MCL_SHIFT ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 size_t MAX_TRAFFIC_CLASS ;
 size_t prio_group ;
 size_t prio_link ;

s32 ixgbe_dcb_config_tx_data_arbiter_82598(struct ixgbe_hw *hw,
      u16 *refill,
      u16 *max,
      u8 *bwg_id,
      u8 *prio_type)
{
 u32 reg;
 u8 i;

 reg = IXGBE_READ_REG(hw, IXGBE_PDPMCS);

 reg &= ~IXGBE_PDPMCS_ARBDIS;

 reg |= (IXGBE_PDPMCS_TPPAC | IXGBE_PDPMCS_TRM);

 IXGBE_WRITE_REG(hw, IXGBE_PDPMCS, reg);


 for (i = 0; i < MAX_TRAFFIC_CLASS; i++) {
  reg = refill[i];
  reg |= (u32)(max[i]) << IXGBE_TDPT2TCCR_MCL_SHIFT;
  reg |= (u32)(bwg_id[i]) << IXGBE_TDPT2TCCR_BWG_SHIFT;

  if (prio_type[i] == prio_group)
   reg |= IXGBE_TDPT2TCCR_GSP;

  if (prio_type[i] == prio_link)
   reg |= IXGBE_TDPT2TCCR_LSP;

  IXGBE_WRITE_REG(hw, IXGBE_TDPT2TCCR(i), reg);
 }


 reg = IXGBE_READ_REG(hw, IXGBE_DTXCTL);
 reg |= IXGBE_DTXCTL_ENDBUBD;
 IXGBE_WRITE_REG(hw, IXGBE_DTXCTL, reg);

 return 0;
}
