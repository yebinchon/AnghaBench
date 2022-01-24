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
struct wil6210_vif {int /*<<< orphan*/  ap_isolate; int /*<<< orphan*/  mid; } ;
struct wil6210_priv {int dummy; } ;
struct net_device {int dummy; } ;
struct bss_parameters {int /*<<< orphan*/  ap_isolate; } ;

/* Variables and functions */
 struct wil6210_vif* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct wil6210_priv*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wil6210_priv* FUNC2 (struct wiphy*) ; 

__attribute__((used)) static int FUNC3(struct wiphy *wiphy,
				   struct net_device *dev,
				   struct bss_parameters *params)
{
	struct wil6210_priv *wil = FUNC2(wiphy);
	struct wil6210_vif *vif = FUNC0(dev);

	if (params->ap_isolate >= 0) {
		FUNC1(wil, "change_bss: ap_isolate MID %d, %d => %d\n",
			     vif->mid, vif->ap_isolate, params->ap_isolate);
		vif->ap_isolate = params->ap_isolate;
	}

	return 0;
}