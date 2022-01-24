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
struct iwl_rxon_context {scalar_t__ ctxid; } ;
struct iwl_priv {int /*<<< orphan*/  sta_lock; TYPE_1__* stations; } ;
struct TYPE_2__ {scalar_t__ ctxid; int used; } ;

/* Variables and functions */
 int IWLAGN_STATION_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*,...) ; 
 int IWL_STA_UCODE_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct iwl_priv *priv,
			      struct iwl_rxon_context *ctx)
{
	int i;
	bool cleared = false;

	FUNC0(priv, "Clearing ucode stations in driver\n");

	FUNC1(&priv->sta_lock);
	for (i = 0; i < IWLAGN_STATION_COUNT; i++) {
		if (ctx && ctx->ctxid != priv->stations[i].ctxid)
			continue;

		if (priv->stations[i].used & IWL_STA_UCODE_ACTIVE) {
			FUNC0(priv,
				"Clearing ucode active for station %d\n", i);
			priv->stations[i].used &= ~IWL_STA_UCODE_ACTIVE;
			cleared = true;
		}
	}
	FUNC2(&priv->sta_lock);

	if (!cleared)
		FUNC0(priv,
			       "No active stations found to be cleared\n");
}