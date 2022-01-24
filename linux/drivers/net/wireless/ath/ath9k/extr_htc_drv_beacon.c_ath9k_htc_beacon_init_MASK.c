#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {int /*<<< orphan*/  sw_beacon_response_time; } ;
struct ath_hw {int /*<<< orphan*/  imask; TYPE_1__ config; } ;
struct ath_beacon_config {int /*<<< orphan*/  intval; int /*<<< orphan*/  nexttbtt; } ;
struct TYPE_4__ {scalar_t__ bmisscnt; } ;
struct ath9k_htc_priv {TYPE_2__ beacon; struct ath_hw* ah; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_SWBA_RESPONSE ; 
 int /*<<< orphan*/  MIN_SWBA_RESPONSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WMI_DISABLE_INTR_CMDID ; 
 int /*<<< orphan*/  WMI_ENABLE_INTR_CMDID ; 
 int /*<<< orphan*/  FUNC3 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct ath9k_htc_priv *priv,
				  struct ath_beacon_config *conf,
				  bool reset_tsf)
{
	struct ath_hw *ah = priv->ah;
	int ret __attribute__ ((unused));
	__be32 htc_imask = 0;
	u8 cmd_rsp;

	if (conf->intval >= FUNC0(DEFAULT_SWBA_RESPONSE))
		ah->config.sw_beacon_response_time = DEFAULT_SWBA_RESPONSE;
	else
		ah->config.sw_beacon_response_time = MIN_SWBA_RESPONSE;

	FUNC1(WMI_DISABLE_INTR_CMDID);
	if (reset_tsf)
		FUNC5(ah);
	FUNC3(priv);
	FUNC4(ah, conf->nexttbtt, conf->intval);
	priv->beacon.bmisscnt = 0;
	htc_imask = FUNC6(ah->imask);
	FUNC2(WMI_ENABLE_INTR_CMDID, &htc_imask);
}