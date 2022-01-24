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
struct wiphy {int dummy; } ;
struct wil6210_priv {int /*<<< orphan*/  mutex; int /*<<< orphan*/  vif_mutex; int /*<<< orphan*/  status; } ;
struct cfg80211_wowlan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_priv*,int) ; 
 int FUNC4 (struct wil6210_priv*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct wil6210_priv*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct wil6210_priv*) ; 
 int /*<<< orphan*/  wil_status_suspended ; 
 struct wil6210_priv* FUNC7 (struct wiphy*) ; 

__attribute__((used)) static int FUNC8(struct wiphy *wiphy,
				struct cfg80211_wowlan *wow)
{
	struct wil6210_priv *wil = FUNC7(wiphy);
	int rc;

	/* Setting the wakeup trigger based on wow is TBD */

	if (FUNC2(wil_status_suspended, wil->status)) {
		FUNC5(wil, "trying to suspend while suspended\n");
		return 0;
	}

	rc = FUNC4(wil, false);
	if (rc)
		goto out;

	FUNC5(wil, "suspending\n");

	FUNC0(&wil->mutex);
	FUNC0(&wil->vif_mutex);
	FUNC6(wil);
	FUNC3(wil, true);
	FUNC1(&wil->vif_mutex);
	FUNC1(&wil->mutex);

out:
	return rc;
}