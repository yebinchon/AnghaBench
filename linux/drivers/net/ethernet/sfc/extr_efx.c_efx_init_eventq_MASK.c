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
struct efx_nic {TYPE_1__* type; int /*<<< orphan*/  net_dev; } ;
struct efx_channel {int eventq_init; scalar_t__ eventq_read_ptr; int /*<<< orphan*/  channel; struct efx_nic* efx; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* push_irq_moderation ) (struct efx_channel*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  drv ; 
 int FUNC1 (struct efx_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_channel*) ; 

__attribute__((used)) static int FUNC4(struct efx_channel *channel)
{
	struct efx_nic *efx = channel->efx;
	int rc;

	FUNC0(channel->eventq_init);

	FUNC2(efx, drv, efx->net_dev,
		  "chan %d init event queue\n", channel->channel);

	rc = FUNC1(channel);
	if (rc == 0) {
		efx->type->push_irq_moderation(channel);
		channel->eventq_read_ptr = 0;
		channel->eventq_init = true;
	}
	return rc;
}