
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_virtf {int state; } ;
struct bnx2x {int dummy; } ;


 int VF_FREE ;
 int bnx2x_iov_static_resc (struct bnx2x*,struct bnx2x_virtf*) ;

__attribute__((used)) static void bnx2x_vf_free_resc(struct bnx2x *bp, struct bnx2x_virtf *vf)
{

 bnx2x_iov_static_resc(bp, vf);
 vf->state = VF_FREE;
}
