
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_10__ {void* pm_frame_timeout; } ;
struct TYPE_6__ {int life_time; } ;
struct iwl_tx_cmd {int tx_flags; int sta_id; int tid_tspec; scalar_t__ next_frame_len; scalar_t__ driver_txop; TYPE_5__ timeout; TYPE_1__ stop_time; } ;
struct iwl_priv {TYPE_3__* lib; } ;
struct TYPE_9__ {int flags; } ;
struct ieee80211_tx_info {int flags; scalar_t__ band; TYPE_4__ control; } ;
struct ieee80211_hdr {int frame_control; } ;
typedef int __le32 ;
typedef int __le16 ;
struct TYPE_8__ {TYPE_2__* bt_params; } ;
struct TYPE_7__ {scalar_t__ advanced_bt_coexist; } ;


 int IEEE80211_TX_CTL_ASSIGN_SEQ ;
 int IEEE80211_TX_CTL_NO_ACK ;
 int IEEE80211_TX_CTRL_PORT_CTRL_PROTO ;
 int IWL_TID_NON_QOS ;
 scalar_t__ NL80211_BAND_2GHZ ;
 int TX_CMD_FLG_ACK_MSK ;
 int TX_CMD_FLG_ANT_SEL_MSK ;
 int TX_CMD_FLG_IGNORE_BT ;
 int TX_CMD_FLG_IMM_BA_RSP_MASK ;
 int TX_CMD_FLG_MORE_FRAG_MSK ;
 int TX_CMD_FLG_SEQ_CTL_MSK ;
 int TX_CMD_FLG_TSF_MSK ;
 int TX_CMD_LIFE_TIME_INFINITE ;
 void* cpu_to_le16 (int) ;
 int* ieee80211_get_qos_ctl (struct ieee80211_hdr*) ;
 scalar_t__ ieee80211_has_morefrags (int ) ;
 scalar_t__ ieee80211_is_assoc_req (int ) ;
 scalar_t__ ieee80211_is_auth (int ) ;
 scalar_t__ ieee80211_is_back_req (int ) ;
 scalar_t__ ieee80211_is_data_qos (int ) ;
 scalar_t__ ieee80211_is_mgmt (int ) ;
 scalar_t__ ieee80211_is_probe_resp (int ) ;
 scalar_t__ ieee80211_is_reassoc_req (int ) ;
 int iwlagn_tx_cmd_protection (struct iwl_priv*,struct ieee80211_tx_info*,int ,int*) ;

__attribute__((used)) static void iwlagn_tx_cmd_build_basic(struct iwl_priv *priv,
          struct sk_buff *skb,
          struct iwl_tx_cmd *tx_cmd,
          struct ieee80211_tx_info *info,
          struct ieee80211_hdr *hdr, u8 sta_id)
{
 __le16 fc = hdr->frame_control;
 __le32 tx_flags = tx_cmd->tx_flags;

 tx_cmd->stop_time.life_time = TX_CMD_LIFE_TIME_INFINITE;

 if (!(info->flags & IEEE80211_TX_CTL_NO_ACK))
  tx_flags |= TX_CMD_FLG_ACK_MSK;
 else
  tx_flags &= ~TX_CMD_FLG_ACK_MSK;

 if (ieee80211_is_probe_resp(fc))
  tx_flags |= TX_CMD_FLG_TSF_MSK;
 else if (ieee80211_is_back_req(fc))
  tx_flags |= TX_CMD_FLG_ACK_MSK | TX_CMD_FLG_IMM_BA_RSP_MASK;
 else if (info->band == NL80211_BAND_2GHZ &&
   priv->lib->bt_params &&
   priv->lib->bt_params->advanced_bt_coexist &&
   (ieee80211_is_auth(fc) || ieee80211_is_assoc_req(fc) ||
   ieee80211_is_reassoc_req(fc) ||
   info->control.flags & IEEE80211_TX_CTRL_PORT_CTRL_PROTO))
  tx_flags |= TX_CMD_FLG_IGNORE_BT;


 tx_cmd->sta_id = sta_id;
 if (ieee80211_has_morefrags(fc))
  tx_flags |= TX_CMD_FLG_MORE_FRAG_MSK;

 if (ieee80211_is_data_qos(fc)) {
  u8 *qc = ieee80211_get_qos_ctl(hdr);
  tx_cmd->tid_tspec = qc[0] & 0xf;
  tx_flags &= ~TX_CMD_FLG_SEQ_CTL_MSK;
 } else {
  tx_cmd->tid_tspec = IWL_TID_NON_QOS;
  if (info->flags & IEEE80211_TX_CTL_ASSIGN_SEQ)
   tx_flags |= TX_CMD_FLG_SEQ_CTL_MSK;
  else
   tx_flags &= ~TX_CMD_FLG_SEQ_CTL_MSK;
 }

 iwlagn_tx_cmd_protection(priv, info, fc, &tx_flags);

 tx_flags &= ~(TX_CMD_FLG_ANT_SEL_MSK);
 if (ieee80211_is_mgmt(fc)) {
  if (ieee80211_is_assoc_req(fc) || ieee80211_is_reassoc_req(fc))
   tx_cmd->timeout.pm_frame_timeout = cpu_to_le16(3);
  else
   tx_cmd->timeout.pm_frame_timeout = cpu_to_le16(2);
 } else {
  tx_cmd->timeout.pm_frame_timeout = 0;
 }

 tx_cmd->driver_txop = 0;
 tx_cmd->tx_flags = tx_flags;
 tx_cmd->next_frame_len = 0;
}
