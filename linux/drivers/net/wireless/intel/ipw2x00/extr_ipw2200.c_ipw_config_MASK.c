#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int accept_all_data_frames; int accept_non_directed_frames; int accept_all_mgmt_bcpr; int accept_all_mgmt_frames; int answer_broadcast_ssid_probe; int /*<<< orphan*/  bt_coexistence; } ;
struct ipw_priv {unsigned char* eeprom; int capability; TYPE_3__* ieee; scalar_t__ notif_missed_beacons; int /*<<< orphan*/  status; scalar_t__ rts_threshold; int /*<<< orphan*/  rates; TYPE_4__ sys_config; scalar_t__ prom_net_dev; TYPE_1__* net_dev; } ;
struct TYPE_6__ {scalar_t__ level; } ;
struct TYPE_7__ {scalar_t__ iw_mode; scalar_t__ host_decrypt; scalar_t__ host_encrypt; TYPE_2__ sec; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int CAP_PRIVACY_ON ; 
 int /*<<< orphan*/  CFG_BT_COEXISTENCE_OOB ; 
 int /*<<< orphan*/  CFG_BT_COEXISTENCE_SIGNAL_CHNL ; 
 size_t EEPROM_SKU_CAPABILITY ; 
 unsigned char EEPROM_SKU_CAP_BT_CHANNEL_SIG ; 
 unsigned char EEPROM_SKU_CAP_BT_OOB ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ IW_MODE_ADHOC ; 
 scalar_t__ SEC_LEVEL_1 ; 
 int /*<<< orphan*/  STATUS_INIT ; 
 scalar_t__ bt_coexist ; 
 int /*<<< orphan*/  FUNC1 (struct ipw_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct ipw_priv*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct ipw_priv*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct ipw_priv*) ; 
 scalar_t__ FUNC8 (struct ipw_priv*,scalar_t__) ; 
 scalar_t__ FUNC9 (struct ipw_priv*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC11 (struct ipw_priv*) ; 
 scalar_t__ FUNC12 (struct ipw_priv*) ; 
 scalar_t__ FUNC13 (struct ipw_priv*) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 

__attribute__((used)) static int FUNC15(struct ipw_priv *priv)
{
	/* This is only called from ipw_up, which resets/reloads the firmware
	   so, we don't need to first disable the card before we configure
	   it */
	if (FUNC13(priv))
		goto error;

	/* initialize adapter address */
	if (FUNC6(priv, priv->net_dev->dev_addr))
		goto error;

	/* set basic system config settings */
	FUNC2(&priv->sys_config);

	/* Support Bluetooth if we have BT h/w on board, and user wants to.
	 * Does not support BT priority yet (don't abort or defer our Tx) */
	if (bt_coexist) {
		unsigned char bt_caps = priv->eeprom[EEPROM_SKU_CAPABILITY];

		if (bt_caps & EEPROM_SKU_CAP_BT_CHANNEL_SIG)
			priv->sys_config.bt_coexistence
			    |= CFG_BT_COEXISTENCE_SIGNAL_CHNL;
		if (bt_caps & EEPROM_SKU_CAP_BT_OOB)
			priv->sys_config.bt_coexistence
			    |= CFG_BT_COEXISTENCE_OOB;
	}

#ifdef CONFIG_IPW2200_PROMISCUOUS
	if (priv->prom_net_dev && netif_running(priv->prom_net_dev)) {
		priv->sys_config.accept_all_data_frames = 1;
		priv->sys_config.accept_non_directed_frames = 1;
		priv->sys_config.accept_all_mgmt_bcpr = 1;
		priv->sys_config.accept_all_mgmt_frames = 1;
	}
#endif

	if (priv->ieee->iw_mode == IW_MODE_ADHOC)
		priv->sys_config.answer_broadcast_ssid_probe = 1;
	else
		priv->sys_config.answer_broadcast_ssid_probe = 0;

	if (FUNC10(priv))
		goto error;

	FUNC1(priv, &priv->rates);
	if (FUNC9(priv, &priv->rates))
		goto error;

	/* Set request-to-send threshold */
	if (priv->rts_threshold) {
		if (FUNC8(priv, priv->rts_threshold))
			goto error;
	}
#ifdef CONFIG_IPW2200_QOS
	IPW_DEBUG_QOS("QoS: call ipw_qos_activate\n");
	ipw_qos_activate(priv, NULL);
#endif				/* CONFIG_IPW2200_QOS */

	if (FUNC12(priv))
		goto error;

	/* final state transition to the RUN state */
	if (FUNC7(priv))
		goto error;

	priv->status |= STATUS_INIT;

	FUNC3(priv);
	FUNC4(priv);
	priv->notif_missed_beacons = 0;

	/* Set hardware WEP key if it is configured. */
	if ((priv->capability & CAP_PRIVACY_ON) &&
	    (priv->ieee->sec.level == SEC_LEVEL_1) &&
	    !(priv->ieee->host_encrypt || priv->ieee->host_decrypt))
		FUNC11(priv);

	return 0;

      error:
	return -EIO;
}