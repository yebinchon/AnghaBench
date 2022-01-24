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
struct iwl_priv {scalar_t__ scan_type; TYPE_2__* scan_request; int /*<<< orphan*/  scan_vif; int /*<<< orphan*/  status; int /*<<< orphan*/  scan_check; int /*<<< orphan*/  mutex; } ;
struct TYPE_4__ {TYPE_1__** channels; } ;
struct TYPE_3__ {int /*<<< orphan*/  band; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*,...) ; 
 scalar_t__ IWL_SCAN_NORMAL ; 
 int /*<<< orphan*/  STATUS_SCANNING ; 
 int /*<<< orphan*/  STATUS_SCAN_ABORTING ; 
 int /*<<< orphan*/  STATUS_SCAN_COMPLETE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_priv*) ; 
 int FUNC4 (struct iwl_priv*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_priv*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct iwl_priv *priv)
{
	bool aborted;

	FUNC6(&priv->mutex);

	if (!FUNC7(STATUS_SCAN_COMPLETE, &priv->status))
		return;

	FUNC0(priv, "Completed scan.\n");

	FUNC1(&priv->scan_check);

	aborted = FUNC7(STATUS_SCAN_ABORTING, &priv->status);
	if (aborted)
		FUNC0(priv, "Aborted scan completed.\n");

	if (!FUNC7(STATUS_SCANNING, &priv->status)) {
		FUNC0(priv, "Scan already completed.\n");
		goto out_settings;
	}

	if (priv->scan_type != IWL_SCAN_NORMAL && !aborted) {
		int err;

		/* Check if mac80211 requested scan during our internal scan */
		if (priv->scan_request == NULL)
			goto out_complete;

		/* If so request a new scan */
		err = FUNC4(priv, priv->scan_vif, IWL_SCAN_NORMAL,
					priv->scan_request->channels[0]->band);
		if (err) {
			FUNC0(priv,
				"failed to initiate pending scan: %d\n", err);
			aborted = true;
			goto out_complete;
		}

		return;
	}

out_complete:
	FUNC2(priv, aborted);

out_settings:
	/* Can we still talk to firmware ? */
	if (!FUNC3(priv))
		return;

	FUNC5(priv);
}