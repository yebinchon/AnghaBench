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
struct TYPE_2__ {int /*<<< orphan*/  hw_value; } ;
struct wil_p2p_info {int /*<<< orphan*/  listen_duration; int /*<<< orphan*/  discovery_timer; int /*<<< orphan*/  discovery_expired_work; TYPE_1__ listen_chan; } ;
struct wil6210_vif {struct wil_p2p_info p2p; } ;
struct wil6210_priv {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  P2P_DEFAULT_BI ; 
 int /*<<< orphan*/  P2P_WILDCARD_SSID ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct wil6210_priv* FUNC5 (struct wil6210_vif*) ; 
 int /*<<< orphan*/  FUNC6 (struct wil6210_priv*,char*) ; 
 int /*<<< orphan*/  wil_p2p_listen_expired ; 
 int FUNC7 (struct wil6210_vif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct wil6210_vif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct wil6210_vif*) ; 
 int /*<<< orphan*/  FUNC10 (struct wil6210_vif*) ; 

__attribute__((used)) static int FUNC11(struct wil6210_vif *vif)
{
	struct wil6210_priv *wil = FUNC5(vif);
	struct wil_p2p_info *p2p = &vif->p2p;
	u8 channel = p2p->listen_chan.hw_value;
	int rc;

	FUNC1(&wil->mutex);

	rc = FUNC7(vif, channel, P2P_DEFAULT_BI);
	if (rc) {
		FUNC6(wil, "wmi_p2p_cfg failed\n");
		goto out;
	}

	rc = FUNC8(vif, FUNC4(P2P_WILDCARD_SSID), P2P_WILDCARD_SSID);
	if (rc) {
		FUNC6(wil, "wmi_set_ssid failed\n");
		goto out_stop;
	}

	rc = FUNC9(vif);
	if (rc) {
		FUNC6(wil, "wmi_start_listen failed\n");
		goto out_stop;
	}

	FUNC0(&p2p->discovery_expired_work, wil_p2p_listen_expired);
	FUNC2(&p2p->discovery_timer,
		  jiffies + FUNC3(p2p->listen_duration));
out_stop:
	if (rc)
		FUNC10(vif);

out:
	return rc;
}