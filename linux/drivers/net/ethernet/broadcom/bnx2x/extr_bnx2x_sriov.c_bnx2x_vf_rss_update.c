
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_virtf {int abs_vfid; } ;
struct bnx2x_config_rss_params {int ramrod_flags; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_MSG_IOV ;
 int DP (int ,char*,int ) ;
 int RAMROD_COMP_WAIT ;
 int bnx2x_config_rss (struct bnx2x*,struct bnx2x_config_rss_params*) ;
 int set_bit (int ,int *) ;

int bnx2x_vf_rss_update(struct bnx2x *bp, struct bnx2x_virtf *vf,
   struct bnx2x_config_rss_params *rss)
{
 DP(BNX2X_MSG_IOV, "vf[%d]\n", vf->abs_vfid);
 set_bit(RAMROD_COMP_WAIT, &rss->ramrod_flags);
 return bnx2x_config_rss(bp, rss);
}
