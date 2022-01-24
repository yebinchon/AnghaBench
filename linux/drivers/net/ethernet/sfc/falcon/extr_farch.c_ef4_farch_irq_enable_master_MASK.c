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
struct TYPE_2__ {scalar_t__ addr; } ;
struct ef4_nic {TYPE_1__ irq_status; } ;
typedef  int /*<<< orphan*/  ef4_oword_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ef4_nic*,int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(struct ef4_nic *efx)
{
	FUNC0(*((ef4_oword_t *) efx->irq_status.addr));
	FUNC2(); /* Ensure interrupt vector is clear before interrupts enabled */

	FUNC1(efx, true, false);
}