
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wmi_tlv_mgmt_tx_compl_ev_arg {int ack_rssi; int status; int desc_id; } ;
struct sk_buff {int dummy; } ;
struct mgmt_tx_compl_params {void* ack_rssi; void* status; void* desc_id; } ;
struct TYPE_2__ {int svc_map; } ;
struct ath10k {TYPE_1__ wmi; } ;


 int ATH10K_DBG_WMI ;
 int WMI_SERVICE_TX_DATA_ACK_RSSI ;
 void* __le32_to_cpu (int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int ath10k_wmi_pull_mgmt_tx_compl (struct ath10k*,struct sk_buff*,struct wmi_tlv_mgmt_tx_compl_ev_arg*) ;
 int memset (struct mgmt_tx_compl_params*,int ,int) ;
 scalar_t__ test_bit (int ,int ) ;
 int wmi_process_mgmt_tx_comp (struct ath10k*,struct mgmt_tx_compl_params*) ;

int ath10k_wmi_event_mgmt_tx_compl(struct ath10k *ar, struct sk_buff *skb)
{
 struct wmi_tlv_mgmt_tx_compl_ev_arg arg;
 struct mgmt_tx_compl_params param;
 int ret;

 ret = ath10k_wmi_pull_mgmt_tx_compl(ar, skb, &arg);
 if (ret) {
  ath10k_warn(ar, "failed to parse mgmt comp event: %d\n", ret);
  return ret;
 }

 memset(&param, 0, sizeof(struct mgmt_tx_compl_params));
 param.desc_id = __le32_to_cpu(arg.desc_id);
 param.status = __le32_to_cpu(arg.status);

 if (test_bit(WMI_SERVICE_TX_DATA_ACK_RSSI, ar->wmi.svc_map))
  param.ack_rssi = __le32_to_cpu(arg.ack_rssi);

 wmi_process_mgmt_tx_comp(ar, &param);

 ath10k_dbg(ar, ATH10K_DBG_WMI, "wmi tlv evnt mgmt tx completion\n");

 return 0;
}
