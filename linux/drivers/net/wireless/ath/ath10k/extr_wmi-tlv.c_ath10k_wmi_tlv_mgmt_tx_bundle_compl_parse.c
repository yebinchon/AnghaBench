
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wmi_tlv_tx_bundle_compl_parse {int desc_ids_done; int status_done; int ppdu_ids_done; int ack_rssi_done; void const* ack_rssi; void const* ppdu_ids; void const* status; void const* desc_ids; void const* num_reports; } ;
struct ath10k {int dummy; } ;





__attribute__((used)) static int
ath10k_wmi_tlv_mgmt_tx_bundle_compl_parse(struct ath10k *ar, u16 tag, u16 len,
       const void *ptr, void *data)
{
 struct wmi_tlv_tx_bundle_compl_parse *bundle_tx_compl = data;

 switch (tag) {
 case 128:
  bundle_tx_compl->num_reports = ptr;
  break;
 case 129:
  if (!bundle_tx_compl->desc_ids_done) {
   bundle_tx_compl->desc_ids_done = 1;
   bundle_tx_compl->desc_ids = ptr;
  } else if (!bundle_tx_compl->status_done) {
   bundle_tx_compl->status_done = 1;
   bundle_tx_compl->status = ptr;
  } else if (!bundle_tx_compl->ppdu_ids_done) {
   bundle_tx_compl->ppdu_ids_done = 1;
   bundle_tx_compl->ppdu_ids = ptr;
  } else if (!bundle_tx_compl->ack_rssi_done) {
   bundle_tx_compl->ack_rssi_done = 1;
   bundle_tx_compl->ack_rssi = ptr;
  }
  break;
 default:
  break;
 }
 return 0;
}
