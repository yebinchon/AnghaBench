
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wmi_tlv_tx_bundle_compl_parse {int ack_rssi; int ppdu_ids; scalar_t__ status; scalar_t__ desc_ids; int * num_reports; } ;
struct wmi_tlv_mgmt_tx_bundle_compl_ev_arg {int ack_rssi; int ppdu_ids; scalar_t__ status; scalar_t__ desc_ids; int num_reports; } ;
struct sk_buff {int len; int data; } ;
struct TYPE_2__ {int svc_map; } ;
struct ath10k {TYPE_1__ wmi; } ;


 int EPROTO ;
 int WMI_SERVICE_TX_DATA_ACK_RSSI ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int ath10k_wmi_tlv_iter (struct ath10k*,int ,int ,int ,struct wmi_tlv_tx_bundle_compl_parse*) ;
 int ath10k_wmi_tlv_mgmt_tx_bundle_compl_parse ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static int ath10k_wmi_tlv_op_pull_mgmt_tx_bundle_compl_ev(
    struct ath10k *ar, struct sk_buff *skb,
    struct wmi_tlv_mgmt_tx_bundle_compl_ev_arg *arg)
{
 struct wmi_tlv_tx_bundle_compl_parse bundle_tx_compl = { };
 int ret;

 ret = ath10k_wmi_tlv_iter(ar, skb->data, skb->len,
      ath10k_wmi_tlv_mgmt_tx_bundle_compl_parse,
      &bundle_tx_compl);
 if (ret) {
  ath10k_warn(ar, "failed to parse tlv: %d\n", ret);
  return ret;
 }

 if (!bundle_tx_compl.num_reports || !bundle_tx_compl.desc_ids ||
     !bundle_tx_compl.status)
  return -EPROTO;

 arg->num_reports = *bundle_tx_compl.num_reports;
 arg->desc_ids = bundle_tx_compl.desc_ids;
 arg->status = bundle_tx_compl.status;
 arg->ppdu_ids = bundle_tx_compl.ppdu_ids;

 if (test_bit(WMI_SERVICE_TX_DATA_ACK_RSSI, ar->wmi.svc_map))
  arg->ack_rssi = bundle_tx_compl.ack_rssi;

 return 0;
}
