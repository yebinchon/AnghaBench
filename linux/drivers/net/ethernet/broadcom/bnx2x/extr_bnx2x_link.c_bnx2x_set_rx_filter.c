
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct link_params {int port; struct bnx2x* bp; } ;
struct bnx2x {int dummy; } ;


 int CHIP_IS_E1 (struct bnx2x*) ;
 int CHIP_IS_E1x (struct bnx2x*) ;
 scalar_t__ NIG_REG_LLH0_BRB1_DRV_MASK ;
 scalar_t__ NIG_REG_LLH0_BRB1_DRV_MASK_MF ;
 scalar_t__ NIG_REG_LLH0_BRB1_NOT_MCP ;
 scalar_t__ NIG_REG_LLH1_BRB1_NOT_MCP ;
 int REG_WR (struct bnx2x*,scalar_t__,int) ;

void bnx2x_set_rx_filter(struct link_params *params, u8 en)
{
 struct bnx2x *bp = params->bp;
 u8 val = en * 0x1F;


 if (!CHIP_IS_E1x(bp))
  val |= en * 0x20;
 REG_WR(bp, NIG_REG_LLH0_BRB1_DRV_MASK + params->port*4, val);

 if (!CHIP_IS_E1(bp)) {
  REG_WR(bp, NIG_REG_LLH0_BRB1_DRV_MASK_MF + params->port*4,
         en*0x3);
 }

 REG_WR(bp, (params->port ? NIG_REG_LLH1_BRB1_NOT_MCP :
      NIG_REG_LLH0_BRB1_NOT_MCP), en);
}
