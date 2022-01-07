
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct mwifiex_private {TYPE_2__* adapter; } ;
struct mwifiex_ie_types_header {int len; int type; } ;
struct ieee80211_regdomain {int dummy; } ;
struct host_cmd_ds_chan_region_cfg {int action; } ;
struct TYPE_3__ {struct host_cmd_ds_chan_region_cfg reg_cfg; } ;
struct host_cmd_ds_command {int size; TYPE_1__ params; } ;
struct TYPE_4__ {struct ieee80211_regdomain* regd; } ;


 int CMD_D ;
 scalar_t__ HostCmd_ACT_GEN_GET ;
 int IS_ERR (struct ieee80211_regdomain*) ;
 scalar_t__ S_DS_GEN ;

 scalar_t__ le16_to_cpu (int ) ;
 struct ieee80211_regdomain* mwifiex_create_custom_regdomain (struct mwifiex_private*,int *,scalar_t__) ;
 int mwifiex_dbg_dump (TYPE_2__*,int ,char*,int *,scalar_t__) ;

__attribute__((used)) static int mwifiex_ret_chan_region_cfg(struct mwifiex_private *priv,
           struct host_cmd_ds_command *resp)
{
 struct host_cmd_ds_chan_region_cfg *reg = &resp->params.reg_cfg;
 u16 action = le16_to_cpu(reg->action);
 u16 tlv, tlv_buf_len, tlv_buf_left;
 struct mwifiex_ie_types_header *head;
 struct ieee80211_regdomain *regd;
 u8 *tlv_buf;

 if (action != HostCmd_ACT_GEN_GET)
  return 0;

 tlv_buf = (u8 *)reg + sizeof(*reg);
 tlv_buf_left = le16_to_cpu(resp->size) - S_DS_GEN - sizeof(*reg);

 while (tlv_buf_left >= sizeof(*head)) {
  head = (struct mwifiex_ie_types_header *)tlv_buf;
  tlv = le16_to_cpu(head->type);
  tlv_buf_len = le16_to_cpu(head->len);

  if (tlv_buf_left < (sizeof(*head) + tlv_buf_len))
   break;

  switch (tlv) {
  case 128:
   mwifiex_dbg_dump(priv->adapter, CMD_D, "CHAN:",
      (u8 *)head + sizeof(*head),
      tlv_buf_len);
   regd = mwifiex_create_custom_regdomain(priv,
    (u8 *)head + sizeof(*head), tlv_buf_len);
   if (!IS_ERR(regd))
    priv->adapter->regd = regd;
   break;
  }

  tlv_buf += (sizeof(*head) + tlv_buf_len);
  tlv_buf_left -= (sizeof(*head) + tlv_buf_len);
 }

 return 0;
}
