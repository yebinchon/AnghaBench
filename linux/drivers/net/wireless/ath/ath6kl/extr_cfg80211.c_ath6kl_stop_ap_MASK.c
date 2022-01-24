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
struct net_device {int dummy; } ;
struct ath6kl_vif {scalar_t__ nw_type; int /*<<< orphan*/  ndev; int /*<<< orphan*/  flags; int /*<<< orphan*/  fw_vif_idx; } ;
struct ath6kl {int /*<<< orphan*/  wmi; } ;

/* Variables and functions */
 scalar_t__ AP_NETWORK ; 
 int /*<<< orphan*/  CONNECTED ; 
 int ENOTCONN ; 
 int EOPNOTSUPP ; 
 struct ath6kl* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct ath6kl_vif*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ath6kl_vif* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct wiphy *wiphy, struct net_device *dev)
{
	struct ath6kl *ar = FUNC0(dev);
	struct ath6kl_vif *vif = FUNC4(dev);

	if (vif->nw_type != AP_NETWORK)
		return -EOPNOTSUPP;
	if (!FUNC6(CONNECTED, &vif->flags))
		return -ENOTCONN;

	FUNC2(ar->wmi, vif->fw_vif_idx);
	FUNC3(CONNECTED, &vif->flags);
	FUNC5(vif->ndev);

	/* Restore ht setting in firmware */
	return FUNC1(vif);
}