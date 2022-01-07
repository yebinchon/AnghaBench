
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct bnx2x_virtf {int abs_vfid; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*,int ) ;
 int BP_ABS_FUNC (struct bnx2x*) ;
 int DORQ_REG_VF_USAGE_CNT ;
 scalar_t__ FW_VF_HANDLE (int ) ;
 int HW_VF_HANDLE (struct bnx2x*,int ) ;
 int bnx2x_flr_clnup_poll_count (struct bnx2x*) ;
 int bnx2x_flr_clnup_poll_hw_counter (struct bnx2x*,int ,char*,int ) ;
 int bnx2x_pretend_func (struct bnx2x*,int ) ;
 scalar_t__ bnx2x_send_final_clnup (struct bnx2x*,int ,int ) ;
 int bnx2x_tx_hw_flushed (struct bnx2x*,int ) ;

__attribute__((used)) static void bnx2x_vf_flr_clnup_hw(struct bnx2x *bp, struct bnx2x_virtf *vf)
{
 u32 poll_cnt = bnx2x_flr_clnup_poll_count(bp);


 bnx2x_pretend_func(bp, HW_VF_HANDLE(bp, vf->abs_vfid));
 bnx2x_flr_clnup_poll_hw_counter(bp, DORQ_REG_VF_USAGE_CNT,
     "DQ VF usage counter timed out",
     poll_cnt);
 bnx2x_pretend_func(bp, BP_ABS_FUNC(bp));


 if (bnx2x_send_final_clnup(bp, (u8)FW_VF_HANDLE(vf->abs_vfid),
       poll_cnt))
  BNX2X_ERR("VF[%d] Final cleanup timed-out\n", vf->abs_vfid);


 bnx2x_tx_hw_flushed(bp, poll_cnt);
}
