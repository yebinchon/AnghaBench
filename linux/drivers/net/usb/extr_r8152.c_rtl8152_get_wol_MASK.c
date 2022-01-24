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
struct r8152 {int /*<<< orphan*/  intf; int /*<<< orphan*/  control; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int /*<<< orphan*/  wolopts; scalar_t__ supported; } ;

/* Variables and functions */
 scalar_t__ WAKE_ANY ; 
 int /*<<< orphan*/  FUNC0 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct r8152* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct r8152*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev, struct ethtool_wolinfo *wol)
{
	struct r8152 *tp = FUNC3(dev);

	if (FUNC5(tp->intf) < 0)
		return;

	if (!FUNC4(tp)) {
		wol->supported = 0;
		wol->wolopts = 0;
	} else {
		FUNC1(&tp->control);
		wol->supported = WAKE_ANY;
		wol->wolopts = FUNC0(tp);
		FUNC2(&tp->control);
	}

	FUNC6(tp->intf);
}