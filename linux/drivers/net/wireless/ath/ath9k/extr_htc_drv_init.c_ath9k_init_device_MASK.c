#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct ieee80211_hw {int /*<<< orphan*/  wiphy; } ;
struct ath_regulatory {int /*<<< orphan*/  alpha2; } ;
struct ath_hw {int dummy; } ;
struct ath_common {struct ath_regulatory regulatory; } ;
struct TYPE_2__ {int /*<<< orphan*/  default_trigger; } ;
struct ath9k_htc_priv {struct ath_hw* ah; int /*<<< orphan*/  data_vo_ep; int /*<<< orphan*/  data_vi_ep; int /*<<< orphan*/  data_bk_ep; int /*<<< orphan*/  data_be_ep; int /*<<< orphan*/  mgmt_ep; int /*<<< orphan*/  uapsd_ep; int /*<<< orphan*/  cab_ep; int /*<<< orphan*/  beacon_ep; int /*<<< orphan*/  wmi_cmd_ep; struct ieee80211_hw* hw; TYPE_1__ led_cdev; } ;
typedef  int /*<<< orphan*/  hw_name ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CONFIG ; 
 int /*<<< orphan*/  IEEE80211_TPT_LEDTRIG_FL_RADIO ; 
 int /*<<< orphan*/  FUNC1 (struct ath9k_htc_priv*) ; 
 int FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  ath9k_htc_tpt_blink ; 
 struct ath_common* FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,char*,int) ; 
 int FUNC6 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath9k_htc_priv*) ; 
 int FUNC8 (struct ath9k_htc_priv*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ath9k_reg_notifier ; 
 int /*<<< orphan*/  FUNC9 (struct ath9k_htc_priv*) ; 
 int FUNC10 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC11 (struct ath9k_htc_priv*,struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC12 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC13 (struct ath9k_htc_priv*) ; 
 int FUNC14 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC15 (struct ath_common*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ath_common*,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct ath_regulatory*) ; 
 int FUNC18 (struct ath_regulatory*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC21 (struct ieee80211_hw*) ; 
 int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int FUNC24(struct ath9k_htc_priv *priv,
			     u16 devid, char *product, u32 drv_info)
{
	struct ieee80211_hw *hw = priv->hw;
	struct ath_common *common;
	struct ath_hw *ah;
	int error = 0;
	struct ath_regulatory *reg;
	char hw_name[64];

	/* Bring up device */
	error = FUNC8(priv, devid, product, drv_info);
	if (error != 0)
		goto err_init;

	ah = priv->ah;
	common = FUNC3(ah);
	FUNC11(priv, hw);

	error = FUNC6(priv);
	if (error != 0)
		goto err_fw;

	/* Initialize regulatory */
	error = FUNC18(&common->regulatory, priv->hw->wiphy,
			      ath9k_reg_notifier);
	if (error)
		goto err_regd;

	reg = &common->regulatory;

	/* Setup TX */
	error = FUNC14(priv);
	if (error != 0)
		goto err_tx;

	/* Setup RX */
	error = FUNC10(priv);
	if (error != 0)
		goto err_rx;

	FUNC4(priv->ah);
#ifdef CONFIG_MAC80211_LEDS
	/* must be initialized before ieee80211_register_hw */
	priv->led_cdev.default_trigger = ieee80211_create_tpt_led_trigger(priv->hw,
		IEEE80211_TPT_LEDTRIG_FL_RADIO, ath9k_htc_tpt_blink,
		ARRAY_SIZE(ath9k_htc_tpt_blink));
#endif

	/* Register with mac80211 */
	error = FUNC20(hw);
	if (error)
		goto err_register;

	/* Handle world regulatory */
	if (!FUNC17(reg)) {
		error = FUNC22(hw->wiphy, reg->alpha2);
		if (error)
			goto err_world;
	}

	error = FUNC2(priv->ah);
	if (error) {
		FUNC16(common, "Unable to create debugfs files\n");
		goto err_world;
	}

	FUNC15(common, CONFIG,
		"WMI:%d, BCN:%d, CAB:%d, UAPSD:%d, MGMT:%d, BE:%d, BK:%d, VI:%d, VO:%d\n",
		priv->wmi_cmd_ep,
		priv->beacon_ep,
		priv->cab_ep,
		priv->uapsd_ep,
		priv->mgmt_ep,
		priv->data_be_ep,
		priv->data_bk_ep,
		priv->data_vi_ep,
		priv->data_vo_ep);

	FUNC5(priv->ah, hw_name, sizeof(hw_name));
	FUNC23(hw->wiphy, "%s\n", hw_name);

	FUNC7(priv);
	FUNC12(priv);

	return 0;

err_world:
	FUNC21(hw);
err_register:
	FUNC9(priv);
err_rx:
	FUNC13(priv);
err_tx:
	/* Nothing */
err_regd:
	/* Nothing */
err_fw:
	FUNC1(priv);
err_init:
	return error;
}