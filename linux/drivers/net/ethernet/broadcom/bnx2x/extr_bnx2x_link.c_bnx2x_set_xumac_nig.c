
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct link_params {scalar_t__ port; struct bnx2x* bp; } ;
struct bnx2x {int dummy; } ;


 int NIG_REG_P0_MAC_IN_EN ;
 int NIG_REG_P0_MAC_OUT_EN ;
 int NIG_REG_P0_MAC_PAUSE_OUT_EN ;
 int NIG_REG_P1_MAC_IN_EN ;
 int NIG_REG_P1_MAC_OUT_EN ;
 int NIG_REG_P1_MAC_PAUSE_OUT_EN ;
 int REG_WR (struct bnx2x*,int ,int ) ;

__attribute__((used)) static void bnx2x_set_xumac_nig(struct link_params *params,
    u16 tx_pause_en,
    u8 enable)
{
 struct bnx2x *bp = params->bp;

 REG_WR(bp, params->port ? NIG_REG_P1_MAC_IN_EN : NIG_REG_P0_MAC_IN_EN,
        enable);
 REG_WR(bp, params->port ? NIG_REG_P1_MAC_OUT_EN : NIG_REG_P0_MAC_OUT_EN,
        enable);
 REG_WR(bp, params->port ? NIG_REG_P1_MAC_PAUSE_OUT_EN :
        NIG_REG_P0_MAC_PAUSE_OUT_EN, tx_pause_en);
}
