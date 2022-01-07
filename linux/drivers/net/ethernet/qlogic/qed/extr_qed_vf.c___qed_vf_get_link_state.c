
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_mcp_link_state {int sfp_tx_fault; int partner_adv_pause; int partner_rx_flow_ctrl_en; int partner_tx_flow_ctrl_en; int partner_adv_speed; int pfc_enabled; int parallel_detection; int an_complete; int an; int full_duplex; int speed; int link_up; } ;
struct qed_hwfn {int dummy; } ;
struct qed_bulletin_content {int sfp_tx_fault; int partner_adv_pause; int partner_rx_flow_ctrl_en; int partner_tx_flow_ctrl_en; int partner_adv_speed; int pfc_enabled; int parallel_detection; int autoneg_complete; int autoneg; int full_duplex; int speed; int link_up; } ;


 int memset (struct qed_mcp_link_state*,int ,int) ;

void __qed_vf_get_link_state(struct qed_hwfn *p_hwfn,
        struct qed_mcp_link_state *p_link,
        struct qed_bulletin_content *p_bulletin)
{
 memset(p_link, 0, sizeof(*p_link));

 p_link->link_up = p_bulletin->link_up;
 p_link->speed = p_bulletin->speed;
 p_link->full_duplex = p_bulletin->full_duplex;
 p_link->an = p_bulletin->autoneg;
 p_link->an_complete = p_bulletin->autoneg_complete;
 p_link->parallel_detection = p_bulletin->parallel_detection;
 p_link->pfc_enabled = p_bulletin->pfc_enabled;
 p_link->partner_adv_speed = p_bulletin->partner_adv_speed;
 p_link->partner_tx_flow_ctrl_en = p_bulletin->partner_tx_flow_ctrl_en;
 p_link->partner_rx_flow_ctrl_en = p_bulletin->partner_rx_flow_ctrl_en;
 p_link->partner_adv_pause = p_bulletin->partner_adv_pause;
 p_link->sfp_tx_fault = p_bulletin->sfp_tx_fault;
}
