#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_10__ {int /*<<< orphan*/ * txq; } ;
struct ath_softc {int /*<<< orphan*/  tx99_skb; TYPE_5__ tx; struct ath_hw* sc_ah; int /*<<< orphan*/  hw_check_work; int /*<<< orphan*/  hw_pll_work; int /*<<< orphan*/  paprd_work; int /*<<< orphan*/  hw_reset_work; int /*<<< orphan*/  sleep_timer; int /*<<< orphan*/  bcon_tasklet; int /*<<< orphan*/  intr_tq; int /*<<< orphan*/  mutex; int /*<<< orphan*/  chan_lock; int /*<<< orphan*/  sc_pm_lock; int /*<<< orphan*/  sc_serial_rw; int /*<<< orphan*/  intr_lock; int /*<<< orphan*/  hw; TYPE_2__* cur_chan; TYPE_2__* chanctx; int /*<<< orphan*/  tx_wait; scalar_t__ tx99_power; int /*<<< orphan*/  dfs_detector; int /*<<< orphan*/  dev; } ;
struct TYPE_9__ {int led_active_high; } ;
struct TYPE_8__ {int /*<<< orphan*/  rmw; int /*<<< orphan*/  write; int /*<<< orphan*/  multi_read; int /*<<< orphan*/  read; } ;
struct ath9k_hw_capabilities {int hw_caps; } ;
struct TYPE_6__ {int /*<<< orphan*/  devid; } ;
struct ath_hw {int led_pin; TYPE_4__ config; TYPE_3__ reg_ops; struct ath9k_hw_capabilities caps; int /*<<< orphan*/  ah_flags; TYPE_1__ hw_version; int /*<<< orphan*/  hw; int /*<<< orphan*/  dev; } ;
struct ath_common {int btcoex_enabled; int disable_ani; int bt_ant_diversity; int cachelsz; struct ath_bus_ops const* bus_ops; int /*<<< orphan*/  cc_lock; int /*<<< orphan*/  debug_mask; struct ath_softc* priv; int /*<<< orphan*/  hw; struct ath_hw* ah; int /*<<< orphan*/ * ps_ops; TYPE_3__* ops; int /*<<< orphan*/  op_flags; } ;
struct ath_bus_ops {int /*<<< orphan*/  (* aspm_init ) (struct ath_common*) ;} ;
struct TYPE_7__ {scalar_t__ hw_queue_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  AH_USE_EEPROM ; 
 int ATH9K_HW_CAP_BT_ANT_DIV ; 
 int ATH9K_NUM_TX_QUEUES ; 
 int /*<<< orphan*/  ATH_OP_INVALID ; 
 scalar_t__ FUNC0 (struct ath_softc*,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ MAX_RATE_POWER ; 
 int /*<<< orphan*/  NL80211_DFS_UNSET ; 
 int /*<<< orphan*/  ath9k_beacon_tasklet ; 
 scalar_t__ ath9k_bt_ant_diversity ; 
 int ath9k_btcoex_enable ; 
 int FUNC3 (struct ath_common*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  ath9k_debug ; 
 int /*<<< orphan*/  FUNC5 (struct ath_softc*) ; 
 struct ath_common* FUNC6 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*) ; 
 int FUNC8 (struct ath_hw*) ; 
 int FUNC9 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_softc*) ; 
 int FUNC12 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct ath_softc*) ; 
 int FUNC14 (struct ath_softc*) ; 
 int FUNC15 (struct ath_softc*) ; 
 int /*<<< orphan*/  ath9k_ioread32 ; 
 int /*<<< orphan*/  ath9k_iowrite32 ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int ath9k_led_active_high ; 
 int /*<<< orphan*/  ath9k_multi_ioread32 ; 
 int FUNC17 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC18 (struct ath_softc*) ; 
 int /*<<< orphan*/  ath9k_ps_ops ; 
 int /*<<< orphan*/  ath9k_reg_rmw ; 
 int /*<<< orphan*/  ath9k_tasklet ; 
 int /*<<< orphan*/  FUNC19 (struct ath_softc*) ; 
 int /*<<< orphan*/  ath_hw_check_work ; 
 int /*<<< orphan*/  ath_hw_pll_work ; 
 int /*<<< orphan*/  ath_paprd_calibrate ; 
 int /*<<< orphan*/  ath_ps_full_sleep ; 
 int /*<<< orphan*/  FUNC20 (struct ath_common*,int*) ; 
 int /*<<< orphan*/  ath_reset_work ; 
 int /*<<< orphan*/  FUNC21 (struct ath_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 struct ath_hw* FUNC23 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct ath_common*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (struct ath_common*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC32(u16 devid, struct ath_softc *sc,
			    const struct ath_bus_ops *bus_ops)
{
	struct ath_hw *ah = NULL;
	struct ath9k_hw_capabilities *pCap;
	struct ath_common *common;
	int ret = 0, i;
	int csz = 0;

	ah = FUNC23(sc->dev, sizeof(struct ath_hw), GFP_KERNEL);
	if (!ah)
		return -ENOMEM;

	ah->dev = sc->dev;
	ah->hw = sc->hw;
	ah->hw_version.devid = devid;
	ah->ah_flags |= AH_USE_EEPROM;
	ah->led_pin = -1;
	ah->reg_ops.read = ath9k_ioread32;
	ah->reg_ops.multi_read = ath9k_multi_ioread32;
	ah->reg_ops.write = ath9k_iowrite32;
	ah->reg_ops.rmw = ath9k_reg_rmw;
	pCap = &ah->caps;

	common = FUNC6(ah);

	/* Will be cleared in ath9k_start() */
	FUNC27(ATH_OP_INVALID, &common->op_flags);

	sc->sc_ah = ah;
	sc->dfs_detector = FUNC24(common, NL80211_DFS_UNSET);
	sc->tx99_power = MAX_RATE_POWER + 1;
	FUNC25(&sc->tx_wait);
	sc->cur_chan = &sc->chanctx[0];
	if (!FUNC16())
		sc->cur_chan->hw_queue_base = 0;

	common->ops = &ah->reg_ops;
	common->bus_ops = bus_ops;
	common->ps_ops = &ath9k_ps_ops;
	common->ah = ah;
	common->hw = sc->hw;
	common->priv = sc;
	common->debug_mask = ath9k_debug;
	common->btcoex_enabled = ath9k_btcoex_enable == 1;
	common->disable_ani = false;

	/*
	 * Platform quirks.
	 */
	FUNC13(sc);

	ret = FUNC14(sc);
	if (ret)
		return ret;

	ret = FUNC17(sc);
	if (ret)
		return ret;

	if (ath9k_led_active_high != -1)
		ah->config.led_active_high = ath9k_led_active_high == 1;

	/*
	 * Enable WLAN/BT RX Antenna diversity only when:
	 *
	 * - BTCOEX is disabled.
	 * - the user manually requests the feature.
	 * - the HW cap is set using the platform data.
	 */
	if (!common->btcoex_enabled && ath9k_bt_ant_diversity &&
	    (pCap->hw_caps & ATH9K_HW_CAP_BT_ANT_DIV))
		common->bt_ant_diversity = 1;

	FUNC28(&common->cc_lock);
	FUNC28(&sc->intr_lock);
	FUNC28(&sc->sc_serial_rw);
	FUNC28(&sc->sc_pm_lock);
	FUNC28(&sc->chan_lock);
	FUNC26(&sc->mutex);
	FUNC30(&sc->intr_tq, ath9k_tasklet, (unsigned long)sc);
	FUNC30(&sc->bcon_tasklet, ath9k_beacon_tasklet,
		     (unsigned long)sc);

	FUNC31(&sc->sleep_timer, ath_ps_full_sleep, 0);
	FUNC2(&sc->hw_reset_work, ath_reset_work);
	FUNC2(&sc->paprd_work, ath_paprd_calibrate);
	FUNC1(&sc->hw_pll_work, ath_hw_pll_work);
	FUNC1(&sc->hw_check_work, ath_hw_check_work);

	FUNC10(sc);

	/*
	 * Cache line size is used to size and align various
	 * structures used to communicate with the hardware.
	 */
	FUNC20(common, &csz);
	common->cachelsz = csz << 2; /* convert to bytes */

	/* Initializes the hardware for all supported chipsets */
	ret = FUNC8(ah);
	if (ret)
		goto err_hw;

	ret = FUNC15(sc);
	if (ret)
		goto err_queues;

	ret =  FUNC9(sc);
	if (ret)
		goto err_btcoex;

	ret = FUNC3(common);
	if (ret)
		goto err_btcoex;

	ret = FUNC12(sc);
	if (ret)
		goto err_btcoex;

	FUNC4(sc->sc_ah);
	FUNC11(sc);
	FUNC19(sc);
	FUNC18(sc);

	if (common->bus_ops->aspm_init)
		common->bus_ops->aspm_init(common);

	return 0;

err_btcoex:
	for (i = 0; i < ATH9K_NUM_TX_QUEUES; i++)
		if (FUNC0(sc, i))
			FUNC21(sc, &sc->tx.txq[i]);
err_queues:
	FUNC7(ah);
err_hw:
	FUNC5(sc);
	FUNC22(sc->tx99_skb);
	return ret;
}