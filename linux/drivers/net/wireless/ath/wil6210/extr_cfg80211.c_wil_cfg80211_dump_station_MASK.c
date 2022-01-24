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
struct wiphy {int dummy; } ;
struct wil6210_vif {int /*<<< orphan*/  mid; } ;
struct wil6210_priv {TYPE_1__* sta; } ;
struct station_info {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct wil6210_vif* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct wil6210_vif*,int,struct station_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_priv*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wil6210_priv*,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct wil6210_priv*,int /*<<< orphan*/ ,int) ; 
 struct wil6210_priv* FUNC6 (struct wiphy*) ; 

__attribute__((used)) static int FUNC7(struct wiphy *wiphy,
				     struct net_device *dev, int idx,
				     u8 *mac, struct station_info *sinfo)
{
	struct wil6210_vif *vif = FUNC1(dev);
	struct wil6210_priv *wil = FUNC6(wiphy);
	int rc;
	int cid = FUNC5(wil, vif->mid, idx);

	if (!FUNC3(wil, cid))
		return -ENOENT;

	FUNC0(mac, wil->sta[cid].addr);
	FUNC4(wil, "dump_station: %pM CID %d MID %d\n", mac, cid,
		     vif->mid);

	rc = FUNC2(vif, cid, sinfo);

	return rc;
}