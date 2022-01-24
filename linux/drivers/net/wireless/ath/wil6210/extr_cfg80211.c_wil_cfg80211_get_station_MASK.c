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
typedef  int /*<<< orphan*/  u8 ;
struct wiphy {int dummy; } ;
struct wil6210_vif {int /*<<< orphan*/  mid; } ;
struct wil6210_priv {int dummy; } ;
struct station_info {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 struct wil6210_vif* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct wil6210_vif*,int,struct station_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct wil6210_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_priv*,char*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct wil6210_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 struct wil6210_priv* FUNC5 (struct wiphy*) ; 

__attribute__((used)) static int FUNC6(struct wiphy *wiphy,
				    struct net_device *ndev,
				    const u8 *mac, struct station_info *sinfo)
{
	struct wil6210_vif *vif = FUNC0(ndev);
	struct wil6210_priv *wil = FUNC5(wiphy);
	int rc;

	int cid = FUNC4(wil, vif->mid, mac);

	FUNC3(wil, "get_station: %pM CID %d MID %d\n", mac, cid,
		     vif->mid);
	if (!FUNC2(wil, cid))
		return -ENOENT;

	rc = FUNC1(vif, cid, sinfo);

	return rc;
}