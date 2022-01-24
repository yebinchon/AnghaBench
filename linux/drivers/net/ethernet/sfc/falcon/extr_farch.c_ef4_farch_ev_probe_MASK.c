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
struct ef4_nic {int dummy; } ;
struct ef4_channel {int eventq_mask; int /*<<< orphan*/  eventq; struct ef4_nic* efx; } ;
typedef  int /*<<< orphan*/  ef4_qword_t ;

/* Variables and functions */
 int FUNC0 (struct ef4_nic*,int /*<<< orphan*/ *,unsigned int) ; 

int FUNC1(struct ef4_channel *channel)
{
	struct ef4_nic *efx = channel->efx;
	unsigned entries;

	entries = channel->eventq_mask + 1;
	return FUNC0(efx, &channel->eventq,
					entries * sizeof(ef4_qword_t));
}