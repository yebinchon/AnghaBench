
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_4__ {int speed; } ;
struct TYPE_3__ {scalar_t__ num_vfs; } ;
struct fm10k_hw {TYPE_2__ bus; TYPE_1__ iov; } ;
typedef int s32 ;


 int FM10K_ERR_PARAM ;
 int FM10K_TC_CREDIT (scalar_t__) ;
 int FM10K_TC_MAXCREDIT (scalar_t__) ;
 int FM10K_TC_MAXCREDIT_64K ;
 int FM10K_TC_RATE (scalar_t__) ;
 int FM10K_TC_RATE_INTERVAL_4US_GEN1 ;
 int FM10K_TC_RATE_INTERVAL_4US_GEN2 ;
 int FM10K_TC_RATE_INTERVAL_4US_GEN3 ;
 int FM10K_TC_RATE_QUANTA_MASK ;
 int FM10K_VF_TC_MAX ;
 int FM10K_VF_TC_MIN ;


 int fm10k_write_reg (struct fm10k_hw*,int ,int) ;

__attribute__((used)) static s32 fm10k_iov_configure_tc_pf(struct fm10k_hw *hw, u16 vf_idx, int rate)
{

 u32 interval = FM10K_TC_RATE_INTERVAL_4US_GEN3;
 u32 tc_rate = FM10K_TC_RATE_QUANTA_MASK;


 if (vf_idx >= hw->iov.num_vfs)
  return FM10K_ERR_PARAM;


 switch (hw->bus.speed) {
 case 129:
  interval = FM10K_TC_RATE_INTERVAL_4US_GEN1;
  break;
 case 128:
  interval = FM10K_TC_RATE_INTERVAL_4US_GEN2;
  break;
 default:
  break;
 }

 if (rate) {
  if (rate > FM10K_VF_TC_MAX || rate < FM10K_VF_TC_MIN)
   return FM10K_ERR_PARAM;
  tc_rate = (rate * 128) / 125;




  if (rate < 4000)
   interval <<= 1;
  else
   tc_rate >>= 1;
 }


 fm10k_write_reg(hw, FM10K_TC_RATE(vf_idx), tc_rate | interval);
 fm10k_write_reg(hw, FM10K_TC_MAXCREDIT(vf_idx), FM10K_TC_MAXCREDIT_64K);
 fm10k_write_reg(hw, FM10K_TC_CREDIT(vf_idx), FM10K_TC_MAXCREDIT_64K);

 return 0;
}
