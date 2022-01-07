
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*,int,...) ;
 int MCP_REG_MCPR_GP_OENABLE ;
 int MCP_REG_MCPR_GP_OUTPUTS ;
 int NETIF_MSG_LINK ;
 int REG_RD (struct bnx2x*,int ) ;
 int REG_WR (struct bnx2x*,int ,int) ;

__attribute__((used)) static void bnx2x_set_epio(struct bnx2x *bp, u32 epio_pin, u32 en)
{
 u32 epio_mask, gp_output, gp_oenable;


 if (epio_pin > 31) {
  DP(NETIF_MSG_LINK, "Invalid EPIO pin %d to set\n", epio_pin);
  return;
 }
 DP(NETIF_MSG_LINK, "Setting EPIO pin %d to %d\n", epio_pin, en);
 epio_mask = 1 << epio_pin;

 gp_output = REG_RD(bp, MCP_REG_MCPR_GP_OUTPUTS);
 if (en)
  gp_output |= epio_mask;
 else
  gp_output &= ~epio_mask;

 REG_WR(bp, MCP_REG_MCPR_GP_OUTPUTS, gp_output);


 gp_oenable = REG_RD(bp, MCP_REG_MCPR_GP_OENABLE);
 REG_WR(bp, MCP_REG_MCPR_GP_OENABLE, gp_oenable | epio_mask);
}
