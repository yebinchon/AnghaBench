#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_4__ {int /*<<< orphan*/  status; } ;
struct iwlagn_tx_resp {int /*<<< orphan*/  rate_n_flags; scalar_t__ failure_frame; TYPE_1__ status; } ;
struct iwl_priv {int dummy; } ;
struct TYPE_6__ {TYPE_2__* rates; } ;
struct ieee80211_tx_info {int /*<<< orphan*/  flags; TYPE_3__ status; } ;
struct TYPE_5__ {scalar_t__ count; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_TX_CTL_AMPDU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_priv*,int /*<<< orphan*/ ,struct ieee80211_tx_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct iwl_priv *priv,
				 struct ieee80211_tx_info *info,
				 struct iwlagn_tx_resp *tx_resp)
{
	u16 status = FUNC4(tx_resp->status.status);

	info->flags &= ~IEEE80211_TX_CTL_AMPDU;

	info->status.rates[0].count = tx_resp->failure_frame + 1;
	info->flags |= FUNC1(status);
	FUNC3(priv, FUNC5(tx_resp->rate_n_flags),
				    info);
	if (!FUNC0(status))
		FUNC2(priv, status);
}