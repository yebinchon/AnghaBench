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
struct TYPE_2__ {int /*<<< orphan*/  DriverLock; } ;
struct s_smc {TYPE_1__ os; } ;
struct net_device {int dummy; } ;
typedef  TYPE_1__ skfddi_priv ;

/* Variables and functions */
 struct s_smc* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct s_smc *smc = FUNC0(dev);
	skfddi_priv *bp = &smc->os;
	unsigned long Flags;

	FUNC2(&bp->DriverLock, Flags);
	FUNC1(dev);
	FUNC3(&bp->DriverLock, Flags);
}