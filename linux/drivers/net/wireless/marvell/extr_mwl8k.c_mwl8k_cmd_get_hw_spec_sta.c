
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mwl8k_priv {int cookie_dma; int ap_macids_supported; int sta_macids_supported; int hw_rev; int fw_rev; int num_mcaddrs; TYPE_2__* txq; TYPE_1__* rxq; } ;
struct TYPE_6__ {void* length; void* code; } ;
struct mwl8k_cmd_get_hw_spec_sta {int caps; int hw_rev; int fw_rev; int num_mcaddrs; int perm_addr; TYPE_3__ header; void* total_rxd; void* num_tx_desc_per_queue; void** tx_queue_ptrs; void* num_tx_queues; void* rx_queue_ptr; void* ps_cookie; } ;
struct ieee80211_hw {struct mwl8k_priv* priv; } ;
struct TYPE_5__ {int txd_dma; } ;
struct TYPE_4__ {int rxd_dma; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MWL8K_CMD_GET_HW_SPEC ;
 int MWL8K_RX_DESCS ;
 int MWL8K_TX_DESCS ;
 int SET_IEEE80211_PERM_ADDR (struct ieee80211_hw*,int ) ;
 void* cpu_to_le16 (int) ;
 void* cpu_to_le32 (int) ;
 int kfree (struct mwl8k_cmd_get_hw_spec_sta*) ;
 struct mwl8k_cmd_get_hw_spec_sta* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int memset (int ,int,int) ;
 int mwl8k_post_cmd (struct ieee80211_hw*,TYPE_3__*) ;
 int mwl8k_set_caps (struct ieee80211_hw*,int ) ;
 int mwl8k_tx_queues (struct mwl8k_priv*) ;

__attribute__((used)) static int mwl8k_cmd_get_hw_spec_sta(struct ieee80211_hw *hw)
{
 struct mwl8k_priv *priv = hw->priv;
 struct mwl8k_cmd_get_hw_spec_sta *cmd;
 int rc;
 int i;

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (cmd == ((void*)0))
  return -ENOMEM;

 cmd->header.code = cpu_to_le16(MWL8K_CMD_GET_HW_SPEC);
 cmd->header.length = cpu_to_le16(sizeof(*cmd));

 memset(cmd->perm_addr, 0xff, sizeof(cmd->perm_addr));
 cmd->ps_cookie = cpu_to_le32(priv->cookie_dma);
 cmd->rx_queue_ptr = cpu_to_le32(priv->rxq[0].rxd_dma);
 cmd->num_tx_queues = cpu_to_le32(mwl8k_tx_queues(priv));
 for (i = 0; i < mwl8k_tx_queues(priv); i++)
  cmd->tx_queue_ptrs[i] = cpu_to_le32(priv->txq[i].txd_dma);
 cmd->num_tx_desc_per_queue = cpu_to_le32(MWL8K_TX_DESCS);
 cmd->total_rxd = cpu_to_le32(MWL8K_RX_DESCS);

 rc = mwl8k_post_cmd(hw, &cmd->header);

 if (!rc) {
  SET_IEEE80211_PERM_ADDR(hw, cmd->perm_addr);
  priv->num_mcaddrs = le16_to_cpu(cmd->num_mcaddrs);
  priv->fw_rev = le32_to_cpu(cmd->fw_rev);
  priv->hw_rev = cmd->hw_rev;
  mwl8k_set_caps(hw, le32_to_cpu(cmd->caps));
  priv->ap_macids_supported = 0x00000000;
  priv->sta_macids_supported = 0x00000001;
 }

 kfree(cmd);
 return rc;
}
