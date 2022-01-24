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
struct net_device {int /*<<< orphan*/  name; } ;
struct hostap_interface {TYPE_1__* local; } ;
struct TYPE_2__ {int hw_resetting; int hw_ready; scalar_t__ hw_reset_tries; } ;
typedef  TYPE_1__ local_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  HFA384X_CMDCODE_ENABLE ; 
 scalar_t__ FUNC0 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct hostap_interface* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, int initial)
{
	struct hostap_interface *iface;
	local_info_t *local;
	int was_resetting;

	iface = FUNC2(dev);
	local = iface->local;
	was_resetting = local->hw_resetting;

	if (FUNC0(dev, HFA384X_CMDCODE_ENABLE, 0, NULL, NULL)) {
		FUNC5("%s: MAC port 0 enabling failed\n", dev->name);
		return 1;
	}

	local->hw_ready = 1;
	local->hw_reset_tries = 0;
	local->hw_resetting = 0;
	FUNC1(dev);

	/* at least D-Link DWL-650 seems to require additional port reset
	 * before it starts acting as an AP, so reset port automatically
	 * here just in case */
	if (initial && FUNC6(dev)) {
		FUNC5("%s: MAC port 0 resetting failed\n", dev->name);
		return 1;
	}

	if (was_resetting && FUNC3(dev)) {
		/* If hw_reset() was called during pending transmit, netif
		 * queue was stopped. Wake it up now since the wlan card has
		 * been resetted. */
		FUNC4(dev);
	}

	return 0;
}