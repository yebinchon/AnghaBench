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
struct device {int dummy; } ;
struct board_info {scalar_t__ in_suspend; int /*<<< orphan*/  wake_state; } ;

/* Variables and functions */
 struct net_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct board_info*) ; 
 struct board_info* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 

__attribute__((used)) static int
FUNC6(struct device *dev)
{
	struct net_device *ndev = FUNC0(dev);
	struct board_info *db = FUNC3(ndev);

	if (ndev) {
		if (FUNC5(ndev)) {
			/* reset if we were not in wake mode to ensure if
			 * the device was powered off it is in a known state */
			if (!db->wake_state) {
				FUNC1(ndev);
				FUNC2(db);
			}

			FUNC4(ndev);
		}

		db->in_suspend = 0;
	}
	return 0;
}