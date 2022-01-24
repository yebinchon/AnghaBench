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
struct ethtool_wolinfo {int /*<<< orphan*/  wolopts; int /*<<< orphan*/  supported; } ;
struct board_info {int /*<<< orphan*/  wake_state; scalar_t__ wake_supported; } ;

/* Variables and functions */
 int /*<<< orphan*/  WAKE_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (struct ethtool_wolinfo*,int /*<<< orphan*/ ,int) ; 
 struct board_info* FUNC1 (struct net_device*) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev, struct ethtool_wolinfo *w)
{
	struct board_info *dm = FUNC1(dev);

	FUNC0(w, 0, sizeof(struct ethtool_wolinfo));

	/* note, we could probably support wake-phy too */
	w->supported = dm->wake_supported ? WAKE_MAGIC : 0;
	w->wolopts = dm->wake_state;
}