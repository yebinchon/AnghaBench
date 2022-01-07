
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct mwl8k_vif {scalar_t__ macid; } ;
struct mwl8k_priv {scalar_t__ ap_fw; int ap_macids_supported; int sta_macids_supported; } ;
struct TYPE_4__ {void* length; void* code; } ;
struct TYPE_3__ {int mac_addr; void* mac_type; } ;
struct mwl8k_cmd_update_mac_addr {TYPE_2__ header; int mac_addr; TYPE_1__ mbss; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_hw {struct mwl8k_priv* priv; } ;


 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int MWL8K_CMD_DEL_MAC_ADDR ;
 int MWL8K_CMD_SET_MAC_ADDR ;
 int MWL8K_MAC_TYPE_PRIMARY_AP ;
 int MWL8K_MAC_TYPE_PRIMARY_CLIENT ;
 int MWL8K_MAC_TYPE_SECONDARY_AP ;
 int MWL8K_MAC_TYPE_SECONDARY_CLIENT ;
 struct mwl8k_vif* MWL8K_VIF (struct ieee80211_vif*) ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 void* cpu_to_le16 (int) ;
 scalar_t__ ffs (int ) ;
 int kfree (struct mwl8k_cmd_update_mac_addr*) ;
 struct mwl8k_cmd_update_mac_addr* kzalloc (int,int ) ;
 int memcpy (int ,int *,int ) ;
 int mwl8k_post_pervif_cmd (struct ieee80211_hw*,struct ieee80211_vif*,TYPE_2__*) ;

__attribute__((used)) static int mwl8k_cmd_update_mac_addr(struct ieee80211_hw *hw,
      struct ieee80211_vif *vif, u8 *mac, bool set)
{
 struct mwl8k_priv *priv = hw->priv;
 struct mwl8k_vif *mwl8k_vif = MWL8K_VIF(vif);
 struct mwl8k_cmd_update_mac_addr *cmd;
 int mac_type;
 int rc;

 mac_type = MWL8K_MAC_TYPE_PRIMARY_AP;
 if (vif != ((void*)0) && vif->type == NL80211_IFTYPE_STATION) {
  if (mwl8k_vif->macid + 1 == ffs(priv->sta_macids_supported))
   if (priv->ap_fw)
    mac_type = MWL8K_MAC_TYPE_SECONDARY_CLIENT;
   else
    mac_type = MWL8K_MAC_TYPE_PRIMARY_CLIENT;
  else
   mac_type = MWL8K_MAC_TYPE_SECONDARY_CLIENT;
 } else if (vif != ((void*)0) && vif->type == NL80211_IFTYPE_AP) {
  if (mwl8k_vif->macid + 1 == ffs(priv->ap_macids_supported))
   mac_type = MWL8K_MAC_TYPE_PRIMARY_AP;
  else
   mac_type = MWL8K_MAC_TYPE_SECONDARY_AP;
 }

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (cmd == ((void*)0))
  return -ENOMEM;

 if (set)
  cmd->header.code = cpu_to_le16(MWL8K_CMD_SET_MAC_ADDR);
 else
  cmd->header.code = cpu_to_le16(MWL8K_CMD_DEL_MAC_ADDR);

 cmd->header.length = cpu_to_le16(sizeof(*cmd));
 if (priv->ap_fw) {
  cmd->mbss.mac_type = cpu_to_le16(mac_type);
  memcpy(cmd->mbss.mac_addr, mac, ETH_ALEN);
 } else {
  memcpy(cmd->mac_addr, mac, ETH_ALEN);
 }

 rc = mwl8k_post_pervif_cmd(hw, vif, &cmd->header);
 kfree(cmd);

 return rc;
}
