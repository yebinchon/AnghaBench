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
struct TYPE_2__ {int /*<<< orphan*/  thermal_periodic; } ;
struct il_priv {TYPE_1__ _3945; int /*<<< orphan*/  workqueue; } ;

/* Variables and functions */
 int HZ ; 
 int REG_RECALIB_PERIOD ; 
 int /*<<< orphan*/  FUNC0 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

void
FUNC3(struct il_priv *il)
{
	/* This will kick in the "brute force"
	 * il3945_hw_reg_comp_txpower_temp() below */
	if (!FUNC1(il))
		goto reschedule;

	/* Set up a new set of temp-adjusted TxPowers, send to NIC.
	 * This is based *only* on current temperature,
	 * ignoring any previous power measurements */
	FUNC0(il);

reschedule:
	FUNC2(il->workqueue, &il->_3945.thermal_periodic,
			   REG_RECALIB_PERIOD * HZ);
}