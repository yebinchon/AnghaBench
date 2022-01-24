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
struct ef4_nic {int /*<<< orphan*/  filter_sem; TYPE_1__* type; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* reconfigure_mac ) (struct ef4_nic*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct ef4_nic *efx)
{
	FUNC0(&efx->filter_sem);
	efx->type->reconfigure_mac(efx);
	FUNC2(&efx->filter_sem);
}