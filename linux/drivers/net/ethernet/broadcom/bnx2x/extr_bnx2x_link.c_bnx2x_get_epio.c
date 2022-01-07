
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*,int) ;
 int MCP_REG_MCPR_GP_INPUTS ;
 int MCP_REG_MCPR_GP_OENABLE ;
 int NETIF_MSG_LINK ;
 int REG_RD (struct bnx2x*,int ) ;
 int REG_WR (struct bnx2x*,int ,int) ;

__attribute__((used)) static void bnx2x_get_epio(struct bnx2x *bp, u32 epio_pin, u32 *en)
{
 u32 epio_mask, gp_oenable;
 *en = 0;

 if (epio_pin > 31) {
  DP(NETIF_MSG_LINK, "Invalid EPIO pin %d to get\n", epio_pin);
  return;
 }

 epio_mask = 1 << epio_pin;

 gp_oenable = REG_RD(bp, MCP_REG_MCPR_GP_OENABLE);
 REG_WR(bp, MCP_REG_MCPR_GP_OENABLE, gp_oenable & ~epio_mask);

 *en = (REG_RD(bp, MCP_REG_MCPR_GP_INPUTS) & epio_mask) >> epio_pin;
}
