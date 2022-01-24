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
struct wil6210_vif {int /*<<< orphan*/  mid; } ;
struct wil6210_priv {int /*<<< orphan*/  mutex; } ;
struct station_del_parameters {int /*<<< orphan*/  reason_code; int /*<<< orphan*/  mac; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct wil6210_vif* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_vif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wil6210_priv*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wil6210_priv* FUNC5 (struct wiphy*) ; 

__attribute__((used)) static int FUNC6(struct wiphy *wiphy,
				    struct net_device *dev,
				    struct station_del_parameters *params)
{
	struct wil6210_vif *vif = FUNC2(dev);
	struct wil6210_priv *wil = FUNC5(wiphy);

	FUNC4(wil, "del_station: %pM, reason=%d mid=%d\n",
		     params->mac, params->reason_code, vif->mid);

	FUNC0(&wil->mutex);
	FUNC3(vif, params->mac, params->reason_code);
	FUNC1(&wil->mutex);

	return 0;
}