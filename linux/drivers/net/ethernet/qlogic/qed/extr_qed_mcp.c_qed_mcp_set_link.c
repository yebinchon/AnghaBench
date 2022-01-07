
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_mcp_mb_params {int eee_cfg; int data_src_size; struct qed_mcp_mb_params* p_data_src; int cmd; int feature_config_flags; int loopback_mode; int adv_speed; int pause; int speed; } ;
struct TYPE_8__ {int adv_caps; int tx_lpi_timer; scalar_t__ tx_lpi_enable; scalar_t__ enable; } ;
struct TYPE_6__ {int advertised_speeds; int forced_speed; int autoneg; } ;
struct TYPE_5__ {scalar_t__ forced_tx; scalar_t__ forced_rx; scalar_t__ autoneg; } ;
struct qed_mcp_link_params {TYPE_4__ eee; int loopback_mode; TYPE_2__ speed; TYPE_1__ pause; } ;
struct qed_hwfn {int b_drv_link_init; TYPE_3__* mcp_info; } ;
struct eth_phy_cfg {int eee_cfg; int data_src_size; struct eth_phy_cfg* p_data_src; int cmd; int feature_config_flags; int loopback_mode; int adv_speed; int pause; int speed; } ;
typedef int phy_cfg ;
typedef int mb_params ;
struct TYPE_7__ {int capabilities; struct qed_mcp_link_params link_input; } ;


 int DP_ERR (struct qed_hwfn*,char*) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,...) ;
 int DRV_MSG_CODE_INIT_PHY ;
 int DRV_MSG_CODE_LINK_RESET ;
 int EEE_CFG_ADV_SPEED_10G ;
 int EEE_CFG_ADV_SPEED_1G ;
 int EEE_CFG_EEE_ENABLED ;
 int EEE_CFG_TX_LPI ;
 int EEE_TX_TIMER_USEC_MASK ;
 int EEE_TX_TIMER_USEC_OFFSET ;
 int ETH_PAUSE_AUTONEG ;
 int ETH_PAUSE_RX ;
 int ETH_PAUSE_TX ;
 int FW_MB_PARAM_FEATURE_SUPPORT_EEE ;
 int NETIF_MSG_LINK ;
 int QED_EEE_10G_ADV ;
 int QED_EEE_1G_ADV ;
 int memset (struct qed_mcp_mb_params*,int ,int) ;
 int qed_mcp_cmd_and_union (struct qed_hwfn*,struct qed_ptt*,struct qed_mcp_mb_params*) ;
 int qed_mcp_handle_link_change (struct qed_hwfn*,struct qed_ptt*,int) ;

int qed_mcp_set_link(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt, bool b_up)
{
 struct qed_mcp_link_params *params = &p_hwfn->mcp_info->link_input;
 struct qed_mcp_mb_params mb_params;
 struct eth_phy_cfg phy_cfg;
 int rc = 0;
 u32 cmd;


 memset(&phy_cfg, 0, sizeof(phy_cfg));
 cmd = b_up ? DRV_MSG_CODE_INIT_PHY : DRV_MSG_CODE_LINK_RESET;
 if (!params->speed.autoneg)
  phy_cfg.speed = params->speed.forced_speed;
 phy_cfg.pause |= (params->pause.autoneg) ? ETH_PAUSE_AUTONEG : 0;
 phy_cfg.pause |= (params->pause.forced_rx) ? ETH_PAUSE_RX : 0;
 phy_cfg.pause |= (params->pause.forced_tx) ? ETH_PAUSE_TX : 0;
 phy_cfg.adv_speed = params->speed.advertised_speeds;
 phy_cfg.loopback_mode = params->loopback_mode;






 if ((p_hwfn->mcp_info->capabilities &
      FW_MB_PARAM_FEATURE_SUPPORT_EEE) && params->eee.enable) {
  phy_cfg.eee_cfg |= EEE_CFG_EEE_ENABLED;
  if (params->eee.tx_lpi_enable)
   phy_cfg.eee_cfg |= EEE_CFG_TX_LPI;
  if (params->eee.adv_caps & QED_EEE_1G_ADV)
   phy_cfg.eee_cfg |= EEE_CFG_ADV_SPEED_1G;
  if (params->eee.adv_caps & QED_EEE_10G_ADV)
   phy_cfg.eee_cfg |= EEE_CFG_ADV_SPEED_10G;
  phy_cfg.eee_cfg |= (params->eee.tx_lpi_timer <<
        EEE_TX_TIMER_USEC_OFFSET) &
       EEE_TX_TIMER_USEC_MASK;
 }

 p_hwfn->b_drv_link_init = b_up;

 if (b_up) {
  DP_VERBOSE(p_hwfn, NETIF_MSG_LINK,
      "Configuring Link: Speed 0x%08x, Pause 0x%08x, adv_speed 0x%08x, loopback 0x%08x, features 0x%08x\n",
      phy_cfg.speed,
      phy_cfg.pause,
      phy_cfg.adv_speed,
      phy_cfg.loopback_mode,
      phy_cfg.feature_config_flags);
 } else {
  DP_VERBOSE(p_hwfn, NETIF_MSG_LINK,
      "Resetting link\n");
 }

 memset(&mb_params, 0, sizeof(mb_params));
 mb_params.cmd = cmd;
 mb_params.p_data_src = &phy_cfg;
 mb_params.data_src_size = sizeof(phy_cfg);
 rc = qed_mcp_cmd_and_union(p_hwfn, p_ptt, &mb_params);


 if (rc) {
  DP_ERR(p_hwfn, "MCP response failure, aborting\n");
  return rc;
 }







 qed_mcp_handle_link_change(p_hwfn, p_ptt, !b_up);

 return 0;
}
