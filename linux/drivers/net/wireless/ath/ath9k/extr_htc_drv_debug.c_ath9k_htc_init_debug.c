
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ath_hw {int dummy; } ;
struct ath_common {scalar_t__ priv; } ;
struct TYPE_6__ {int debugfs_phy; int rx_stats; } ;
struct ath9k_htc_priv {int ah; TYPE_3__ debug; int spec_priv; TYPE_2__* hw; } ;
struct TYPE_5__ {TYPE_1__* wiphy; } ;
struct TYPE_4__ {int debugfsdir; } ;


 int ENOMEM ;
 int KBUILD_MODNAME ;
 int ath9k_cmn_debug_base_eeprom (int ,int ) ;
 int ath9k_cmn_debug_modal_eeprom (int ,int ) ;
 int ath9k_cmn_debug_phy_err (int ,int *) ;
 int ath9k_cmn_debug_recv (int ,int *) ;
 int ath9k_cmn_spectral_init_debug (int *,int ) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int debugfs_create_dir (int ,int ) ;
 int debugfs_create_file (char*,int,int ,struct ath9k_htc_priv*,int *) ;
 int fops_debug ;
 int fops_queue ;
 int fops_skb_rx ;
 int fops_slot ;
 int fops_tgt_int_stats ;
 int fops_tgt_rx_stats ;
 int fops_tgt_tx_stats ;
 int fops_xmit ;

int ath9k_htc_init_debug(struct ath_hw *ah)
{
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath9k_htc_priv *priv = (struct ath9k_htc_priv *) common->priv;

 priv->debug.debugfs_phy = debugfs_create_dir(KBUILD_MODNAME,
          priv->hw->wiphy->debugfsdir);
 if (!priv->debug.debugfs_phy)
  return -ENOMEM;

 ath9k_cmn_spectral_init_debug(&priv->spec_priv, priv->debug.debugfs_phy);

 debugfs_create_file("tgt_int_stats", 0400, priv->debug.debugfs_phy,
       priv, &fops_tgt_int_stats);
 debugfs_create_file("tgt_tx_stats", 0400, priv->debug.debugfs_phy,
       priv, &fops_tgt_tx_stats);
 debugfs_create_file("tgt_rx_stats", 0400, priv->debug.debugfs_phy,
       priv, &fops_tgt_rx_stats);
 debugfs_create_file("xmit", 0400, priv->debug.debugfs_phy,
       priv, &fops_xmit);
 debugfs_create_file("skb_rx", 0400, priv->debug.debugfs_phy,
       priv, &fops_skb_rx);

 ath9k_cmn_debug_recv(priv->debug.debugfs_phy, &priv->debug.rx_stats);
 ath9k_cmn_debug_phy_err(priv->debug.debugfs_phy, &priv->debug.rx_stats);

 debugfs_create_file("slot", 0400, priv->debug.debugfs_phy,
       priv, &fops_slot);
 debugfs_create_file("queue", 0400, priv->debug.debugfs_phy,
       priv, &fops_queue);
 debugfs_create_file("debug", 0600, priv->debug.debugfs_phy,
       priv, &fops_debug);

 ath9k_cmn_debug_base_eeprom(priv->debug.debugfs_phy, priv->ah);
 ath9k_cmn_debug_modal_eeprom(priv->debug.debugfs_phy, priv->ah);

 return 0;
}
