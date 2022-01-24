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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;
struct board_info {int wake_state; int /*<<< orphan*/  irq_wake; int /*<<< orphan*/  addr_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  wake_supported; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM9000_WCR ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int WAKE_MAGIC ; 
 int WCR_MAGICEN ; 
 int /*<<< orphan*/  FUNC0 (struct board_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct board_info* FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, struct ethtool_wolinfo *w)
{
	struct board_info *dm = FUNC6(dev);
	unsigned long flags;
	u32 opts = w->wolopts;
	u32 wcr = 0;

	if (!dm->wake_supported)
		return -EOPNOTSUPP;

	if (opts & ~WAKE_MAGIC)
		return -EINVAL;

	if (opts & WAKE_MAGIC)
		wcr |= WCR_MAGICEN;

	FUNC2(&dm->addr_lock);

	FUNC4(&dm->lock, flags);
	FUNC0(dm, DM9000_WCR, wcr);
	FUNC5(&dm->lock, flags);

	FUNC3(&dm->addr_lock);

	if (dm->wake_state != opts) {
		/* change in wol state, update IRQ state */

		if (!dm->wake_state)
			FUNC1(dm->irq_wake, 1);
		else if (dm->wake_state && !opts)
			FUNC1(dm->irq_wake, 0);
	}

	dm->wake_state = opts;
	return 0;
}