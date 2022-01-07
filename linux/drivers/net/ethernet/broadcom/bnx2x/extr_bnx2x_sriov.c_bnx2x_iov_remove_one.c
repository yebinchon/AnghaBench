
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bnx2x {TYPE_1__* vfdb; } ;
struct TYPE_4__ {int total; scalar_t__ first_vf_in_pf; } ;
struct TYPE_3__ {TYPE_2__ sriov; } ;


 int BNX2X_MSG_IOV ;
 int BP_ABS_FUNC (struct bnx2x*) ;
 int DP (int ,char*,scalar_t__) ;
 int HW_VF_HANDLE (struct bnx2x*,scalar_t__) ;
 int IS_SRIOV (struct bnx2x*) ;
 int __bnx2x_iov_free_vfdb (struct bnx2x*) ;
 int bnx2x_disable_sriov (struct bnx2x*) ;
 int bnx2x_pretend_func (struct bnx2x*,int ) ;
 int bnx2x_vf_enable_internal (struct bnx2x*,int ) ;

void bnx2x_iov_remove_one(struct bnx2x *bp)
{
 int vf_idx;


 if (!IS_SRIOV(bp))
  return;

 bnx2x_disable_sriov(bp);


 for (vf_idx = 0; vf_idx < bp->vfdb->sriov.total; vf_idx++) {
  bnx2x_pretend_func(bp,
       HW_VF_HANDLE(bp,
      bp->vfdb->sriov.first_vf_in_pf +
      vf_idx));
  DP(BNX2X_MSG_IOV, "disabling internal access for vf %d\n",
     bp->vfdb->sriov.first_vf_in_pf + vf_idx);
  bnx2x_vf_enable_internal(bp, 0);
  bnx2x_pretend_func(bp, BP_ABS_FUNC(bp));
 }


 __bnx2x_iov_free_vfdb(bp);
}
