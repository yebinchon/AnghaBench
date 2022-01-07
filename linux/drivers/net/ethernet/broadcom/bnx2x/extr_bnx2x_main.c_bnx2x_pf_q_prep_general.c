
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct bnx2x_general_setup_params {int fp_hsi; int cos; int mtu; int spcl_id; int stat_id; } ;
struct bnx2x_fastpath {int cl_id; } ;
struct bnx2x {TYPE_1__* dev; } ;
struct TYPE_2__ {int mtu; } ;


 int BNX2X_FCOE_MINI_JUMBO_MTU ;
 int ETH_FP_HSI_VERSION ;
 scalar_t__ IS_FCOE_FP (struct bnx2x_fastpath*) ;
 int bnx2x_stats_id (struct bnx2x_fastpath*) ;

__attribute__((used)) static void bnx2x_pf_q_prep_general(struct bnx2x *bp,
 struct bnx2x_fastpath *fp, struct bnx2x_general_setup_params *gen_init,
 u8 cos)
{
 gen_init->stat_id = bnx2x_stats_id(fp);
 gen_init->spcl_id = fp->cl_id;


 if (IS_FCOE_FP(fp))
  gen_init->mtu = BNX2X_FCOE_MINI_JUMBO_MTU;
 else
  gen_init->mtu = bp->dev->mtu;

 gen_init->cos = cos;

 gen_init->fp_hsi = ETH_FP_HSI_VERSION;
}
