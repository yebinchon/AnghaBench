
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_virtf {int dummy; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*) ;
 int BNX2X_MSG_IOV ;
 int DP (int ,char*) ;
 int bnx2x_leading_vfq (struct bnx2x_virtf*,int ) ;
 int sp_initialized ;

__attribute__((used)) static bool bnx2x_validate_vf_sp_objs(struct bnx2x *bp,
           struct bnx2x_virtf *vf,
           bool print_err)
{
 if (!bnx2x_leading_vfq(vf, sp_initialized)) {
  if (print_err)
   BNX2X_ERR("Slowpath objects not yet initialized!\n");
  else
   DP(BNX2X_MSG_IOV, "Slowpath objects not yet initialized!\n");
  return 0;
 }
 return 1;
}
