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
struct ef4_nic {int last_irq_cpu; TYPE_1__* type; } ;
struct TYPE_2__ {int (* irq_test_generate ) (struct ef4_nic*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct ef4_nic*) ; 

int FUNC2(struct ef4_nic *efx)
{
	efx->last_irq_cpu = -1;
	FUNC0();
	return efx->type->irq_test_generate(efx);
}