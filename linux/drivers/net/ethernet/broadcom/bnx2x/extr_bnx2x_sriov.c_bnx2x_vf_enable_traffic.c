
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_virtf {int abs_vfid; } ;
struct bnx2x {int dummy; } ;


 int BP_ABS_FUNC (struct bnx2x*) ;
 int HW_VF_HANDLE (struct bnx2x*,int ) ;
 int PBF_REG_DISABLE_VF ;
 int REG_WR (struct bnx2x*,int ,int ) ;
 int bnx2x_pretend_func (struct bnx2x*,int ) ;
 int bnx2x_vf_igu_reset (struct bnx2x*,struct bnx2x_virtf*) ;

__attribute__((used)) static void bnx2x_vf_enable_traffic(struct bnx2x *bp, struct bnx2x_virtf *vf)
{

 bnx2x_vf_igu_reset(bp, vf);


 bnx2x_pretend_func(bp, HW_VF_HANDLE(bp, vf->abs_vfid));
 REG_WR(bp, PBF_REG_DISABLE_VF, 0);
 bnx2x_pretend_func(bp, BP_ABS_FUNC(bp));
}
