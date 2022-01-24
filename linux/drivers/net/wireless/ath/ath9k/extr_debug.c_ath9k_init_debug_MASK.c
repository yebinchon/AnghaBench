#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  rxstats; } ;
struct TYPE_14__ {int /*<<< orphan*/  debugfs_phy; TYPE_3__ stats; } ;
struct ath_softc {TYPE_6__ debug; TYPE_7__* sc_ah; int /*<<< orphan*/  dev; int /*<<< orphan*/  spec_priv; TYPE_2__* hw; } ;
struct TYPE_13__ {int /*<<< orphan*/  cwm_ignore_extcca; } ;
struct ath_hw {TYPE_5__ config; int /*<<< orphan*/  txchainmask; int /*<<< orphan*/  rxchainmask; } ;
struct ath_common {scalar_t__ priv; } ;
struct TYPE_12__ {int /*<<< orphan*/  enable_paprd; } ;
struct TYPE_15__ {int /*<<< orphan*/  gpio_val; int /*<<< orphan*/  gpio_mask; TYPE_4__ config; } ;
struct TYPE_10__ {TYPE_1__* wiphy; } ;
struct TYPE_9__ {int /*<<< orphan*/  debugfsdir; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_softc*) ; 
 struct ath_common* FUNC6 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int /*<<< orphan*/ ,struct ath_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fops_ackto ; 
 int /*<<< orphan*/  fops_ani ; 
 int /*<<< orphan*/  fops_antenna_diversity ; 
 int /*<<< orphan*/  fops_bt_ant_diversity ; 
 int /*<<< orphan*/  fops_btcoex ; 
 int /*<<< orphan*/  fops_debug ; 
 int /*<<< orphan*/  fops_nf_override ; 
 int /*<<< orphan*/  fops_regdump ; 
 int /*<<< orphan*/  fops_regidx ; 
 int /*<<< orphan*/  fops_regval ; 
 int /*<<< orphan*/  fops_tpc ; 
 int /*<<< orphan*/  fops_wow ; 
 int /*<<< orphan*/  read_file_dma ; 
 int /*<<< orphan*/  read_file_dump_nfcal ; 
 int /*<<< orphan*/  read_file_interrupt ; 
 int /*<<< orphan*/  read_file_misc ; 
 int /*<<< orphan*/  read_file_queues ; 
 int /*<<< orphan*/  read_file_reset ; 
 int /*<<< orphan*/  read_file_xmit ; 

int FUNC14(struct ath_hw *ah)
{
	struct ath_common *common = FUNC6(ah);
	struct ath_softc *sc = (struct ath_softc *) common->priv;

	sc->debug.debugfs_phy = FUNC10("ath9k",
						   sc->hw->wiphy->debugfsdir);
	if (!sc->debug.debugfs_phy)
		return -ENOMEM;

#ifdef CONFIG_ATH_DEBUG
	debugfs_create_file("debug", 0600, sc->debug.debugfs_phy,
			    sc, &fops_debug);
#endif

	FUNC5(sc);
	FUNC7(sc);
	FUNC4(&sc->spec_priv, sc->debug.debugfs_phy);

	FUNC9(sc->dev, "dma", sc->debug.debugfs_phy,
				    read_file_dma);
	FUNC9(sc->dev, "interrupt", sc->debug.debugfs_phy,
				    read_file_interrupt);
	FUNC9(sc->dev, "xmit", sc->debug.debugfs_phy,
				    read_file_xmit);
	FUNC9(sc->dev, "queues", sc->debug.debugfs_phy,
				    read_file_queues);
	FUNC9(sc->dev, "misc", sc->debug.debugfs_phy,
				    read_file_misc);
	FUNC9(sc->dev, "reset", sc->debug.debugfs_phy,
				    read_file_reset);

	FUNC3(sc->debug.debugfs_phy, &sc->debug.stats.rxstats);
	FUNC2(sc->debug.debugfs_phy, &sc->debug.stats.rxstats);

	FUNC13("rx_chainmask", 0400, sc->debug.debugfs_phy,
			  &ah->rxchainmask);
	FUNC13("tx_chainmask", 0400, sc->debug.debugfs_phy,
			  &ah->txchainmask);
	FUNC11("ani", 0600,
			    sc->debug.debugfs_phy, sc, &fops_ani);
	FUNC8("paprd", 0600, sc->debug.debugfs_phy,
			    &sc->sc_ah->config.enable_paprd);
	FUNC11("regidx", 0600, sc->debug.debugfs_phy,
			    sc, &fops_regidx);
	FUNC11("regval", 0600, sc->debug.debugfs_phy,
			    sc, &fops_regval);
	FUNC8("ignore_extcca", 0600,
			    sc->debug.debugfs_phy,
			    &ah->config.cwm_ignore_extcca);
	FUNC11("regdump", 0400, sc->debug.debugfs_phy, sc,
			    &fops_regdump);
	FUNC9(sc->dev, "dump_nfcal",
				    sc->debug.debugfs_phy,
				    read_file_dump_nfcal);

	FUNC0(sc->debug.debugfs_phy, sc->sc_ah);
	FUNC1(sc->debug.debugfs_phy, sc->sc_ah);

	FUNC12("gpio_mask", 0600,
			   sc->debug.debugfs_phy, &sc->sc_ah->gpio_mask);
	FUNC12("gpio_val", 0600,
			   sc->debug.debugfs_phy, &sc->sc_ah->gpio_val);
	FUNC11("antenna_diversity", 0400,
			    sc->debug.debugfs_phy, sc, &fops_antenna_diversity);
#ifdef CONFIG_ATH9K_BTCOEX_SUPPORT
	debugfs_create_file("bt_ant_diversity", 0600,
			    sc->debug.debugfs_phy, sc, &fops_bt_ant_diversity);
	debugfs_create_file("btcoex", 0400, sc->debug.debugfs_phy, sc,
			    &fops_btcoex);
#endif

#ifdef CONFIG_ATH9K_WOW
	debugfs_create_file("wow", 0600, sc->debug.debugfs_phy, sc, &fops_wow);
#endif

#ifdef CONFIG_ATH9K_DYNACK
	debugfs_create_file("ack_to", 0400, sc->debug.debugfs_phy,
			    sc, &fops_ackto);
#endif
	FUNC11("tpc", 0600, sc->debug.debugfs_phy, sc, &fops_tpc);

	FUNC11("nf_override", 0600,
			    sc->debug.debugfs_phy, sc, &fops_nf_override);

	return 0;
}