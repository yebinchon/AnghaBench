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
struct net_device {int dummy; } ;
struct ath6kl_vif {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONNECTED ; 
 int /*<<< orphan*/  WLAN_ENABLED ; 
 struct ath6kl_vif* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev)
{
	struct ath6kl_vif *vif = FUNC0(dev);

	FUNC4(WLAN_ENABLED, &vif->flags);

	if (FUNC5(CONNECTED, &vif->flags)) {
		FUNC2(dev);
		FUNC3(dev);
	} else {
		FUNC1(dev);
	}

	return 0;
}