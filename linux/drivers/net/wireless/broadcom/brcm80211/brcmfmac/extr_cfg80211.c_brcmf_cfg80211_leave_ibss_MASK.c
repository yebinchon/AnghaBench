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
struct brcmf_if {int /*<<< orphan*/  vif; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  WLAN_REASON_DEAUTH_LEAVING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_if*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct brcmf_if* FUNC4 (struct net_device*) ; 

__attribute__((used)) static s32
FUNC5(struct wiphy *wiphy, struct net_device *ndev)
{
	struct brcmf_if *ifp = FUNC4(ndev);

	FUNC0(TRACE, "Enter\n");
	if (!FUNC3(ifp->vif)) {
		/* When driver is being unloaded, it can end up here. If an
		 * error is returned then later on a debug trace in the wireless
		 * core module will be printed. To avoid this 0 is returned.
		 */
		return 0;
	}

	FUNC1(ifp->vif, WLAN_REASON_DEAUTH_LEAVING);
	FUNC2(ifp, false);

	FUNC0(TRACE, "Exit\n");

	return 0;
}