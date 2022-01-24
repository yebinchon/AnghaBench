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
struct ieee80211_hw {struct ath10k* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  width; TYPE_1__* chan; } ;
struct ieee80211_chanctx_conf {TYPE_2__ def; } ;
struct ath10k {int /*<<< orphan*/  conf_mutex; int /*<<< orphan*/  data_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  center_freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_MAC ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ieee80211_chanctx_conf*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,struct ieee80211_chanctx_conf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct ieee80211_hw *hw,
			  struct ieee80211_chanctx_conf *ctx)
{
	struct ath10k *ar = hw->priv;

	FUNC0(ar, ATH10K_DBG_MAC,
		   "mac chanctx add freq %hu width %d ptr %pK\n",
		   ctx->def.chan->center_freq, ctx->def.width, ctx);

	FUNC4(&ar->conf_mutex);

	FUNC6(&ar->data_lock);
	FUNC1(ar, ctx, NULL, 0);
	FUNC7(&ar->data_lock);

	FUNC3(ar);
	FUNC2(ar);

	FUNC5(&ar->conf_mutex);

	return 0;
}