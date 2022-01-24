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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u64 ;
struct wil_p2p_info {scalar_t__ cookie; int /*<<< orphan*/  listen_chan; } ;
struct wil6210_vif {scalar_t__ mid; struct wil_p2p_info p2p; } ;
struct wil6210_priv {int /*<<< orphan*/  vif_mutex; TYPE_1__* main_ndev; int /*<<< orphan*/  radio_wdev; int /*<<< orphan*/  mutex; } ;
struct TYPE_2__ {int /*<<< orphan*/  ieee80211_ptr; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_priv*,struct wil6210_vif*) ; 
 struct wil6210_priv* FUNC4 (struct wil6210_vif*) ; 
 int /*<<< orphan*/  FUNC5 (struct wil6210_priv*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct wil6210_priv*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct wil6210_vif*) ; 

int FUNC8(struct wil6210_vif *vif, u64 cookie)
{
	struct wil6210_priv *wil = FUNC4(vif);
	struct wil_p2p_info *p2p = &vif->p2p;
	u8 started;

	FUNC1(&wil->mutex);

	if (cookie != p2p->cookie) {
		FUNC6(wil, "Cookie mismatch: 0x%016llx vs. 0x%016llx\n",
			 p2p->cookie, cookie);
		FUNC2(&wil->mutex);
		return -ENOENT;
	}

	started = FUNC7(vif);

	FUNC2(&wil->mutex);

	if (!started) {
		FUNC5(wil, "listen not started\n");
		return -ENOENT;
	}

	FUNC1(&wil->vif_mutex);
	FUNC0(FUNC3(wil, vif),
					   p2p->cookie,
					   &p2p->listen_chan,
					   GFP_KERNEL);
	if (vif->mid == 0)
		wil->radio_wdev = wil->main_ndev->ieee80211_ptr;
	FUNC2(&wil->vif_mutex);
	return 0;
}