#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ expires; } ;
struct bmac_data {int timeout_active; int /*<<< orphan*/  lock; TYPE_1__ tx_timeout; } ;

/* Variables and functions */
 scalar_t__ TX_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 struct bmac_data* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC5(struct net_device *dev)
{
	struct bmac_data *bp = FUNC2(dev);
	unsigned long flags;

	FUNC3(&bp->lock, flags);
	if (bp->timeout_active)
		FUNC1(&bp->tx_timeout);
	bp->tx_timeout.expires = jiffies + TX_TIMEOUT;
	FUNC0(&bp->tx_timeout);
	bp->timeout_active = 1;
	FUNC4(&bp->lock, flags);
}