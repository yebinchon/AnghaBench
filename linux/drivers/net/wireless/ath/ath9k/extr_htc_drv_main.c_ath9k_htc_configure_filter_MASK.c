#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct ieee80211_hw {struct ath9k_htc_priv* priv; } ;
struct ath_common {int /*<<< orphan*/  op_flags; } ;
struct ath9k_htc_priv {unsigned int rxfilter; int /*<<< orphan*/  mutex; int /*<<< orphan*/  ah; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANY ; 
 int /*<<< orphan*/  ATH_OP_INVALID ; 
 int /*<<< orphan*/  CONFIG ; 
 unsigned int SUPPORTED_FILTERS ; 
 int /*<<< orphan*/  FUNC0 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath9k_htc_priv*) ; 
 struct ath_common* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_common*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct ieee80211_hw *hw,
				       unsigned int changed_flags,
				       unsigned int *total_flags,
				       u64 multicast)
{
	struct ath9k_htc_priv *priv = hw->priv;
	struct ath_common *common = FUNC3(priv->ah);
	u32 rfilt;

	FUNC6(&priv->mutex);
	changed_flags &= SUPPORTED_FILTERS;
	*total_flags &= SUPPORTED_FILTERS;

	if (FUNC8(ATH_OP_INVALID, &common->op_flags)) {
		FUNC5(FUNC3(priv->ah), ANY,
			"Unable to configure filter on invalid state\n");
		FUNC7(&priv->mutex);
		return;
	}
	FUNC2(priv);

	priv->rxfilter = *total_flags;
	rfilt = FUNC0(priv);
	FUNC4(priv->ah, rfilt);

	FUNC5(FUNC3(priv->ah), CONFIG, "Set HW RX filter: 0x%x\n",
		rfilt);

	FUNC1(priv);
	FUNC7(&priv->mutex);
}