
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int rxstats; } ;
struct TYPE_14__ {int debugfs_phy; TYPE_3__ stats; } ;
struct ath_softc {TYPE_6__ debug; TYPE_7__* sc_ah; int dev; int spec_priv; TYPE_2__* hw; } ;
struct TYPE_13__ {int cwm_ignore_extcca; } ;
struct ath_hw {TYPE_5__ config; int txchainmask; int rxchainmask; } ;
struct ath_common {scalar_t__ priv; } ;
struct TYPE_12__ {int enable_paprd; } ;
struct TYPE_15__ {int gpio_val; int gpio_mask; TYPE_4__ config; } ;
struct TYPE_10__ {TYPE_1__* wiphy; } ;
struct TYPE_9__ {int debugfsdir; } ;


 int ENOMEM ;
 int ath9k_cmn_debug_base_eeprom (int ,TYPE_7__*) ;
 int ath9k_cmn_debug_modal_eeprom (int ,TYPE_7__*) ;
 int ath9k_cmn_debug_phy_err (int ,int *) ;
 int ath9k_cmn_debug_recv (int ,int *) ;
 int ath9k_cmn_spectral_init_debug (int *,int ) ;
 int ath9k_dfs_init_debug (struct ath_softc*) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_tx99_init_debug (struct ath_softc*) ;
 int debugfs_create_bool (char*,int,int ,int *) ;
 int debugfs_create_devm_seqfile (int ,char*,int ,int ) ;
 int debugfs_create_dir (char*,int ) ;
 int debugfs_create_file (char*,int,int ,struct ath_softc*,int *) ;
 int debugfs_create_u32 (char*,int,int ,int *) ;
 int debugfs_create_u8 (char*,int,int ,int *) ;
 int fops_ackto ;
 int fops_ani ;
 int fops_antenna_diversity ;
 int fops_bt_ant_diversity ;
 int fops_btcoex ;
 int fops_debug ;
 int fops_nf_override ;
 int fops_regdump ;
 int fops_regidx ;
 int fops_regval ;
 int fops_tpc ;
 int fops_wow ;
 int read_file_dma ;
 int read_file_dump_nfcal ;
 int read_file_interrupt ;
 int read_file_misc ;
 int read_file_queues ;
 int read_file_reset ;
 int read_file_xmit ;

int ath9k_init_debug(struct ath_hw *ah)
{
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath_softc *sc = (struct ath_softc *) common->priv;

 sc->debug.debugfs_phy = debugfs_create_dir("ath9k",
         sc->hw->wiphy->debugfsdir);
 if (!sc->debug.debugfs_phy)
  return -ENOMEM;






 ath9k_dfs_init_debug(sc);
 ath9k_tx99_init_debug(sc);
 ath9k_cmn_spectral_init_debug(&sc->spec_priv, sc->debug.debugfs_phy);

 debugfs_create_devm_seqfile(sc->dev, "dma", sc->debug.debugfs_phy,
        read_file_dma);
 debugfs_create_devm_seqfile(sc->dev, "interrupt", sc->debug.debugfs_phy,
        read_file_interrupt);
 debugfs_create_devm_seqfile(sc->dev, "xmit", sc->debug.debugfs_phy,
        read_file_xmit);
 debugfs_create_devm_seqfile(sc->dev, "queues", sc->debug.debugfs_phy,
        read_file_queues);
 debugfs_create_devm_seqfile(sc->dev, "misc", sc->debug.debugfs_phy,
        read_file_misc);
 debugfs_create_devm_seqfile(sc->dev, "reset", sc->debug.debugfs_phy,
        read_file_reset);

 ath9k_cmn_debug_recv(sc->debug.debugfs_phy, &sc->debug.stats.rxstats);
 ath9k_cmn_debug_phy_err(sc->debug.debugfs_phy, &sc->debug.stats.rxstats);

 debugfs_create_u8("rx_chainmask", 0400, sc->debug.debugfs_phy,
     &ah->rxchainmask);
 debugfs_create_u8("tx_chainmask", 0400, sc->debug.debugfs_phy,
     &ah->txchainmask);
 debugfs_create_file("ani", 0600,
       sc->debug.debugfs_phy, sc, &fops_ani);
 debugfs_create_bool("paprd", 0600, sc->debug.debugfs_phy,
       &sc->sc_ah->config.enable_paprd);
 debugfs_create_file("regidx", 0600, sc->debug.debugfs_phy,
       sc, &fops_regidx);
 debugfs_create_file("regval", 0600, sc->debug.debugfs_phy,
       sc, &fops_regval);
 debugfs_create_bool("ignore_extcca", 0600,
       sc->debug.debugfs_phy,
       &ah->config.cwm_ignore_extcca);
 debugfs_create_file("regdump", 0400, sc->debug.debugfs_phy, sc,
       &fops_regdump);
 debugfs_create_devm_seqfile(sc->dev, "dump_nfcal",
        sc->debug.debugfs_phy,
        read_file_dump_nfcal);

 ath9k_cmn_debug_base_eeprom(sc->debug.debugfs_phy, sc->sc_ah);
 ath9k_cmn_debug_modal_eeprom(sc->debug.debugfs_phy, sc->sc_ah);

 debugfs_create_u32("gpio_mask", 0600,
      sc->debug.debugfs_phy, &sc->sc_ah->gpio_mask);
 debugfs_create_u32("gpio_val", 0600,
      sc->debug.debugfs_phy, &sc->sc_ah->gpio_val);
 debugfs_create_file("antenna_diversity", 0400,
       sc->debug.debugfs_phy, sc, &fops_antenna_diversity);
 debugfs_create_file("tpc", 0600, sc->debug.debugfs_phy, sc, &fops_tpc);

 debugfs_create_file("nf_override", 0600,
       sc->debug.debugfs_phy, sc, &fops_nf_override);

 return 0;
}
