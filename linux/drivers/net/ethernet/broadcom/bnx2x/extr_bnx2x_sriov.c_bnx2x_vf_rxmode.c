
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnx2x_virtf {int abs_vfid; } ;
struct bnx2x_rx_mode_ramrod_params {int rx_accept_flags; int ramrod_flags; } ;
struct bnx2x {int dummy; } ;
struct TYPE_2__ {int accept_flags; } ;


 int BNX2X_MSG_IOV ;
 int DP (int ,char*,int ) ;
 int RAMROD_COMP_WAIT ;
 int bnx2x_config_rx_mode (struct bnx2x*,struct bnx2x_rx_mode_ramrod_params*) ;
 int bnx2x_vf_prep_rx_mode (struct bnx2x*,int,struct bnx2x_rx_mode_ramrod_params*,struct bnx2x_virtf*,unsigned long) ;
 int set_bit (int ,int *) ;
 TYPE_1__* vfq_get (struct bnx2x_virtf*,int) ;

int bnx2x_vf_rxmode(struct bnx2x *bp, struct bnx2x_virtf *vf,
      int qid, unsigned long accept_flags)
{
 struct bnx2x_rx_mode_ramrod_params ramrod;

 DP(BNX2X_MSG_IOV, "vf[%d]\n", vf->abs_vfid);

 bnx2x_vf_prep_rx_mode(bp, qid, &ramrod, vf, accept_flags);
 set_bit(RAMROD_COMP_WAIT, &ramrod.ramrod_flags);
 vfq_get(vf, qid)->accept_flags = ramrod.rx_accept_flags;
 return bnx2x_config_rx_mode(bp, &ramrod);
}
