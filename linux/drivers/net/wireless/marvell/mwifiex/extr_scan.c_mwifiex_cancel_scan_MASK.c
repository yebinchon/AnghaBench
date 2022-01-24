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
struct mwifiex_private {int scan_aborting; int /*<<< orphan*/ * scan_request; } ;
struct mwifiex_adapter {int scan_processing; int priv_num; struct mwifiex_private** priv; int /*<<< orphan*/  mwifiex_cmd_lock; } ;
struct cfg80211_scan_info {int aborted; } ;

/* Variables and functions */
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct cfg80211_scan_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct mwifiex_adapter *adapter)
{
	struct mwifiex_private *priv;
	int i;

	FUNC1(adapter);

	if (adapter->scan_processing) {
		FUNC3(&adapter->mwifiex_cmd_lock);
		adapter->scan_processing = false;
		FUNC4(&adapter->mwifiex_cmd_lock);
		for (i = 0; i < adapter->priv_num; i++) {
			priv = adapter->priv[i];
			if (!priv)
				continue;
			if (priv->scan_request) {
				struct cfg80211_scan_info info = {
					.aborted = true,
				};

				FUNC2(adapter, INFO,
					    "info: aborting scan\n");
				FUNC0(priv->scan_request, &info);
				priv->scan_request = NULL;
				priv->scan_aborting = false;
			}
		}
	}
}