
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct link_vars {int phy_flags; } ;
struct link_params {int port; struct bnx2x* bp; } ;
struct bnx2x {int dummy; } ;


 scalar_t__ BIGMAC2_REGISTER_RX_LSS_STAT ;
 scalar_t__ BIGMAC_REGISTER_RX_LSS_STATUS ;
 scalar_t__ CHIP_IS_E2 (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E3 (struct bnx2x*) ;
 scalar_t__ GRCBASE_XMAC0 ;
 scalar_t__ GRCBASE_XMAC1 ;
 int LINK_STATUS_NONE ;
 int MISC_REGISTERS_RESET_REG_2_RST_BMAC0 ;
 int MISC_REGISTERS_RESET_REG_2_XMAC ;
 scalar_t__ MISC_REG_RESET_REG_2 ;
 scalar_t__ NIG_REG_EGRESS_EMAC0_PORT ;
 scalar_t__ NIG_REG_INGRESS_BMAC0_MEM ;
 scalar_t__ NIG_REG_INGRESS_BMAC1_MEM ;
 int PHY_HALF_OPEN_CONN_FLAG ;
 int PHY_PHYSICAL_LINK_FLAG ;
 int REG_RD (struct bnx2x*,scalar_t__) ;
 int REG_RD_DMAE (struct bnx2x*,scalar_t__,scalar_t__*,int) ;
 int REG_WR (struct bnx2x*,scalar_t__,int) ;
 int XMAC_CLEAR_RX_LSS_STATUS_REG_CLEAR_LOCAL_FAULT_STATUS ;
 int XMAC_CLEAR_RX_LSS_STATUS_REG_CLEAR_REMOTE_FAULT_STATUS ;
 scalar_t__ XMAC_REG_CLEAR_RX_LSS_STATUS ;
 scalar_t__ XMAC_REG_RX_LSS_STATUS ;
 int bnx2x_analyze_link_error (struct link_params*,struct link_vars*,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static int bnx2x_check_half_open_conn(struct link_params *params,
          struct link_vars *vars,
          u8 notify)
{
 struct bnx2x *bp = params->bp;
 u32 lss_status = 0;
 u32 mac_base;

 if (((vars->phy_flags & PHY_PHYSICAL_LINK_FLAG) == 0) ||
     (REG_RD(bp, NIG_REG_EGRESS_EMAC0_PORT + params->port*4)))
  return 0;

 if (CHIP_IS_E3(bp) &&
     (REG_RD(bp, MISC_REG_RESET_REG_2) &
       (MISC_REGISTERS_RESET_REG_2_XMAC))) {





  mac_base = (params->port) ? GRCBASE_XMAC1 : GRCBASE_XMAC0;


  REG_WR(bp, mac_base + XMAC_REG_CLEAR_RX_LSS_STATUS, 0);
  REG_WR(bp, mac_base + XMAC_REG_CLEAR_RX_LSS_STATUS,
         XMAC_CLEAR_RX_LSS_STATUS_REG_CLEAR_LOCAL_FAULT_STATUS |
         XMAC_CLEAR_RX_LSS_STATUS_REG_CLEAR_REMOTE_FAULT_STATUS);
  if (REG_RD(bp, mac_base + XMAC_REG_RX_LSS_STATUS))
   lss_status = 1;

  bnx2x_analyze_link_error(params, vars, lss_status,
      PHY_HALF_OPEN_CONN_FLAG,
      LINK_STATUS_NONE, notify);
 } else if (REG_RD(bp, MISC_REG_RESET_REG_2) &
     (MISC_REGISTERS_RESET_REG_2_RST_BMAC0 << params->port)) {

  u32 lss_status_reg;
  u32 wb_data[2];
  mac_base = params->port ? NIG_REG_INGRESS_BMAC1_MEM :
   NIG_REG_INGRESS_BMAC0_MEM;

  if (CHIP_IS_E2(bp))
   lss_status_reg = BIGMAC2_REGISTER_RX_LSS_STAT;
  else
   lss_status_reg = BIGMAC_REGISTER_RX_LSS_STATUS;

  REG_RD_DMAE(bp, mac_base + lss_status_reg, wb_data, 2);
  lss_status = (wb_data[0] > 0);

  bnx2x_analyze_link_error(params, vars, lss_status,
      PHY_HALF_OPEN_CONN_FLAG,
      LINK_STATUS_NONE, notify);
 }
 return 0;
}
