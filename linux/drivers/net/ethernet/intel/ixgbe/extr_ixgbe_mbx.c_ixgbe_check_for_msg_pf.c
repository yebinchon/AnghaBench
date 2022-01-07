
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int reqs; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;
struct ixgbe_hw {TYPE_2__ mbx; } ;
typedef int s32 ;


 int IXGBE_ERR_MBX ;
 int IXGBE_MBVFICR_INDEX (int) ;
 int IXGBE_MBVFICR_VFREQ_VF1 ;
 int ixgbe_check_for_bit_pf (struct ixgbe_hw*,int,int ) ;

__attribute__((used)) static s32 ixgbe_check_for_msg_pf(struct ixgbe_hw *hw, u16 vf_number)
{
 s32 index = IXGBE_MBVFICR_INDEX(vf_number);
 u32 vf_bit = vf_number % 16;

 if (!ixgbe_check_for_bit_pf(hw, IXGBE_MBVFICR_VFREQ_VF1 << vf_bit,
        index)) {
  hw->mbx.stats.reqs++;
  return 0;
 }

 return IXGBE_ERR_MBX;
}
