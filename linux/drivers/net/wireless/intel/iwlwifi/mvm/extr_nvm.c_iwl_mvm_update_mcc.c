
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_mvm {TYPE_1__* fw; } ;
struct iwl_mcc_update_resp_v3 {int cap; int channels; int n_channels; int geo_info; int time; int source_id; void* mcc; int status; } ;
struct iwl_mcc_update_resp {void* mcc; int status; int channels; int n_channels; int geo_info; int time; int source_id; void* cap; } ;
struct iwl_mcc_update_cmd {void* mcc; int source_id; } ;
struct iwl_host_cmd {int* len; struct iwl_rx_packet* resp_pkt; int data; int flags; int id; } ;
typedef enum iwl_mcc_source { ____Placeholder_iwl_mcc_source } iwl_mcc_source ;
typedef int __le32 ;
struct TYPE_2__ {int ucode_capa; } ;


 int CMD_WANT_SKB ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 struct iwl_mcc_update_resp* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int IWL_DEBUG_LAR (struct iwl_mvm*,char*,char const,char const,int,...) ;
 int IWL_UCODE_TLV_CAPA_MCC_UPDATE_11AX_SUPPORT ;
 int MCC_UPDATE_CMD ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int __le32_to_cpu (int ) ;
 void* cpu_to_le16 (char const) ;
 scalar_t__ fw_has_capa (int *,int ) ;
 int iwl_free_resp (struct iwl_host_cmd*) ;
 int iwl_mvm_is_lar_supported (struct iwl_mvm*) ;
 int iwl_mvm_send_cmd (struct iwl_mvm*,struct iwl_host_cmd*) ;
 struct iwl_mcc_update_resp* kmemdup (struct iwl_mcc_update_resp*,int,int ) ;
 struct iwl_mcc_update_resp* kzalloc (int,int ) ;
 int le16_to_cpu (void*) ;
 int le32_to_cpu (int ) ;
 int memcpy (int ,int ,int) ;

struct iwl_mcc_update_resp *
iwl_mvm_update_mcc(struct iwl_mvm *mvm, const char *alpha2,
     enum iwl_mcc_source src_id)
{
 struct iwl_mcc_update_cmd mcc_update_cmd = {
  .mcc = cpu_to_le16(alpha2[0] << 8 | alpha2[1]),
  .source_id = (u8)src_id,
 };
 struct iwl_mcc_update_resp *resp_cp;
 struct iwl_rx_packet *pkt;
 struct iwl_host_cmd cmd = {
  .id = MCC_UPDATE_CMD,
  .flags = CMD_WANT_SKB,
  .data = { &mcc_update_cmd },
 };

 int ret;
 u32 status;
 int resp_len, n_channels;
 u16 mcc;

 if (WARN_ON_ONCE(!iwl_mvm_is_lar_supported(mvm)))
  return ERR_PTR(-EOPNOTSUPP);

 cmd.len[0] = sizeof(struct iwl_mcc_update_cmd);

 IWL_DEBUG_LAR(mvm, "send MCC update to FW with '%c%c' src = %d\n",
        alpha2[0], alpha2[1], src_id);

 ret = iwl_mvm_send_cmd(mvm, &cmd);
 if (ret)
  return ERR_PTR(ret);

 pkt = cmd.resp_pkt;


 if (fw_has_capa(&mvm->fw->ucode_capa,
   IWL_UCODE_TLV_CAPA_MCC_UPDATE_11AX_SUPPORT)) {
  struct iwl_mcc_update_resp *mcc_resp = (void *)pkt->data;

  n_channels = __le32_to_cpu(mcc_resp->n_channels);
  resp_len = sizeof(struct iwl_mcc_update_resp) +
      n_channels * sizeof(__le32);
  resp_cp = kmemdup(mcc_resp, resp_len, GFP_KERNEL);
  if (!resp_cp) {
   resp_cp = ERR_PTR(-ENOMEM);
   goto exit;
  }
 } else {
  struct iwl_mcc_update_resp_v3 *mcc_resp_v3 = (void *)pkt->data;

  n_channels = __le32_to_cpu(mcc_resp_v3->n_channels);
  resp_len = sizeof(struct iwl_mcc_update_resp) +
      n_channels * sizeof(__le32);
  resp_cp = kzalloc(resp_len, GFP_KERNEL);
  if (!resp_cp) {
   resp_cp = ERR_PTR(-ENOMEM);
   goto exit;
  }

  resp_cp->status = mcc_resp_v3->status;
  resp_cp->mcc = mcc_resp_v3->mcc;
  resp_cp->cap = cpu_to_le16(mcc_resp_v3->cap);
  resp_cp->source_id = mcc_resp_v3->source_id;
  resp_cp->time = mcc_resp_v3->time;
  resp_cp->geo_info = mcc_resp_v3->geo_info;
  resp_cp->n_channels = mcc_resp_v3->n_channels;
  memcpy(resp_cp->channels, mcc_resp_v3->channels,
         n_channels * sizeof(__le32));
 }

 status = le32_to_cpu(resp_cp->status);

 mcc = le16_to_cpu(resp_cp->mcc);


 if (mcc == 0) {
  mcc = 0x3030;
  resp_cp->mcc = cpu_to_le16(mcc);
 }

 IWL_DEBUG_LAR(mvm,
        "MCC response status: 0x%x. new MCC: 0x%x ('%c%c') n_chans: %d\n",
        status, mcc, mcc >> 8, mcc & 0xff, n_channels);

exit:
 iwl_free_resp(&cmd);
 return resp_cp;
}
