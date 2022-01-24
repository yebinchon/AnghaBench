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
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  DriverLock; } ;
struct s_smc {TYPE_1__ os; } ;
typedef  TYPE_1__ skfddi_priv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct s_smc *smc)
{
	skfddi_priv *bp = &smc->os;

	FUNC1("[llc_restart_tx]\n");

	// Try to send queued packets
	FUNC4(&bp->DriverLock);
	FUNC2(smc);
	FUNC3(&bp->DriverLock);
	FUNC0(bp->dev);// system may send again if it was blocked

}