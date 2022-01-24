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
struct ef4_nic {TYPE_1__* type; } ;
struct ef4_channel {int /*<<< orphan*/  eventq; int /*<<< orphan*/  channel; struct ef4_nic* efx; } ;
typedef  int /*<<< orphan*/  ef4_oword_t ;
struct TYPE_2__ {int /*<<< orphan*/  evq_ptr_tbl_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ef4_nic*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ef4_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct ef4_channel *channel)
{
	ef4_oword_t reg;
	struct ef4_nic *efx = channel->efx;

	/* Remove event queue from card */
	FUNC0(reg);
	FUNC2(efx, &reg, efx->type->evq_ptr_tbl_base,
			 channel->channel);

	/* Unpin event queue */
	FUNC1(efx, &channel->eventq);
}