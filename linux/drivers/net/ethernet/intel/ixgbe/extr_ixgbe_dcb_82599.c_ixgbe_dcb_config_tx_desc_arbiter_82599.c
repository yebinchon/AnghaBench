
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int IXGBE_RTTDCS ;
 int IXGBE_RTTDCS_TDPAC ;
 int IXGBE_RTTDCS_TDRM ;
 int IXGBE_RTTDQSEL ;
 int IXGBE_RTTDT1C ;
 int IXGBE_RTTDT2C (int) ;
 int IXGBE_RTTDT2C_BWG_SHIFT ;
 int IXGBE_RTTDT2C_GSP ;
 int IXGBE_RTTDT2C_LSP ;
 int IXGBE_RTTDT2C_MCL_SHIFT ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int MAX_TRAFFIC_CLASS ;
 int prio_group ;
 int prio_link ;

s32 ixgbe_dcb_config_tx_desc_arbiter_82599(struct ixgbe_hw *hw,
        u16 *refill,
        u16 *max,
        u8 *bwg_id,
        u8 *prio_type)
{
 u32 reg, max_credits;
 u8 i;


 for (i = 0; i < 128; i++) {
  IXGBE_WRITE_REG(hw, IXGBE_RTTDQSEL, i);
  IXGBE_WRITE_REG(hw, IXGBE_RTTDT1C, 0);
 }


 for (i = 0; i < MAX_TRAFFIC_CLASS; i++) {
  max_credits = max[i];
  reg = max_credits << IXGBE_RTTDT2C_MCL_SHIFT;
  reg |= refill[i];
  reg |= (u32)(bwg_id[i]) << IXGBE_RTTDT2C_BWG_SHIFT;

  if (prio_type[i] == prio_group)
   reg |= IXGBE_RTTDT2C_GSP;

  if (prio_type[i] == prio_link)
   reg |= IXGBE_RTTDT2C_LSP;

  IXGBE_WRITE_REG(hw, IXGBE_RTTDT2C(i), reg);
 }





 reg = IXGBE_RTTDCS_TDPAC | IXGBE_RTTDCS_TDRM;
 IXGBE_WRITE_REG(hw, IXGBE_RTTDCS, reg);

 return 0;
}
