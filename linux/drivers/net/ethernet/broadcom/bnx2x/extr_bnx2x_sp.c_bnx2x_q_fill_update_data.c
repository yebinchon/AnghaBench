
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client_update_ramrod_data {void* handle_ptp_pkts_change_flg; void* handle_ptp_pkts_flg; void* tx_switching_change_flg; void* tx_switching_flg; void* silent_vlan_mask; void* silent_vlan_value; void* silent_vlan_removal_flg; void* silent_vlan_change_flg; void* default_vlan_change_flg; void* default_vlan_enable_flg; void* activate_change_flg; void* activate_flg; void* anti_spoofing_change_flg; void* anti_spoofing_enable_flg; void* outer_vlan_removal_change_flg; void* outer_vlan_removal_enable_flg; void* inner_vlan_removal_change_flg; void* inner_vlan_removal_enable_flg; void* default_vlan; int func_id; int client_id; } ;
struct bnx2x_queue_update_params {int update_flags; int silent_removal_mask; int silent_removal_value; int def_vlan; } ;
struct bnx2x_queue_sp_obj {int func_id; int cl_id; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_Q_UPDATE_ACTIVATE ;
 int BNX2X_Q_UPDATE_ACTIVATE_CHNG ;
 int BNX2X_Q_UPDATE_ANTI_SPOOF ;
 int BNX2X_Q_UPDATE_ANTI_SPOOF_CHNG ;
 int BNX2X_Q_UPDATE_DEF_VLAN_EN ;
 int BNX2X_Q_UPDATE_DEF_VLAN_EN_CHNG ;
 int BNX2X_Q_UPDATE_IN_VLAN_REM ;
 int BNX2X_Q_UPDATE_IN_VLAN_REM_CHNG ;
 int BNX2X_Q_UPDATE_OUT_VLAN_REM ;
 int BNX2X_Q_UPDATE_OUT_VLAN_REM_CHNG ;
 int BNX2X_Q_UPDATE_PTP_PKTS ;
 int BNX2X_Q_UPDATE_PTP_PKTS_CHNG ;
 int BNX2X_Q_UPDATE_SILENT_VLAN_REM ;
 int BNX2X_Q_UPDATE_SILENT_VLAN_REM_CHNG ;
 int BNX2X_Q_UPDATE_TX_SWITCHING ;
 int BNX2X_Q_UPDATE_TX_SWITCHING_CHNG ;
 void* cpu_to_le16 (int ) ;
 void* test_bit (int ,int *) ;

__attribute__((used)) static void bnx2x_q_fill_update_data(struct bnx2x *bp,
         struct bnx2x_queue_sp_obj *obj,
         struct bnx2x_queue_update_params *params,
         struct client_update_ramrod_data *data)
{

 data->client_id = obj->cl_id;


 data->func_id = obj->func_id;


 data->default_vlan = cpu_to_le16(params->def_vlan);


 data->inner_vlan_removal_enable_flg =
  test_bit(BNX2X_Q_UPDATE_IN_VLAN_REM, &params->update_flags);
 data->inner_vlan_removal_change_flg =
  test_bit(BNX2X_Q_UPDATE_IN_VLAN_REM_CHNG,
    &params->update_flags);


 data->outer_vlan_removal_enable_flg =
  test_bit(BNX2X_Q_UPDATE_OUT_VLAN_REM, &params->update_flags);
 data->outer_vlan_removal_change_flg =
  test_bit(BNX2X_Q_UPDATE_OUT_VLAN_REM_CHNG,
    &params->update_flags);




 data->anti_spoofing_enable_flg =
  test_bit(BNX2X_Q_UPDATE_ANTI_SPOOF, &params->update_flags);
 data->anti_spoofing_change_flg =
  test_bit(BNX2X_Q_UPDATE_ANTI_SPOOF_CHNG, &params->update_flags);


 data->activate_flg =
  test_bit(BNX2X_Q_UPDATE_ACTIVATE, &params->update_flags);
 data->activate_change_flg =
  test_bit(BNX2X_Q_UPDATE_ACTIVATE_CHNG, &params->update_flags);


 data->default_vlan_enable_flg =
  test_bit(BNX2X_Q_UPDATE_DEF_VLAN_EN, &params->update_flags);
 data->default_vlan_change_flg =
  test_bit(BNX2X_Q_UPDATE_DEF_VLAN_EN_CHNG,
    &params->update_flags);


 data->silent_vlan_change_flg =
  test_bit(BNX2X_Q_UPDATE_SILENT_VLAN_REM_CHNG,
    &params->update_flags);
 data->silent_vlan_removal_flg =
  test_bit(BNX2X_Q_UPDATE_SILENT_VLAN_REM, &params->update_flags);
 data->silent_vlan_value = cpu_to_le16(params->silent_removal_value);
 data->silent_vlan_mask = cpu_to_le16(params->silent_removal_mask);


 data->tx_switching_flg =
  test_bit(BNX2X_Q_UPDATE_TX_SWITCHING, &params->update_flags);
 data->tx_switching_change_flg =
  test_bit(BNX2X_Q_UPDATE_TX_SWITCHING_CHNG,
    &params->update_flags);


 data->handle_ptp_pkts_flg =
  test_bit(BNX2X_Q_UPDATE_PTP_PKTS, &params->update_flags);
 data->handle_ptp_pkts_change_flg =
  test_bit(BNX2X_Q_UPDATE_PTP_PKTS_CHNG, &params->update_flags);
}
