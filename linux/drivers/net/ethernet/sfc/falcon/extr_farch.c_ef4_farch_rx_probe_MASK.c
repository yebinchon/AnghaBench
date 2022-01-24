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
struct ef4_rx_queue {int ptr_mask; int /*<<< orphan*/  rxd; struct ef4_nic* efx; } ;
struct ef4_nic {int dummy; } ;
typedef  int /*<<< orphan*/  ef4_qword_t ;

/* Variables and functions */
 int FUNC0 (struct ef4_nic*,int /*<<< orphan*/ *,unsigned int) ; 

int FUNC1(struct ef4_rx_queue *rx_queue)
{
	struct ef4_nic *efx = rx_queue->efx;
	unsigned entries;

	entries = rx_queue->ptr_mask + 1;
	return FUNC0(efx, &rx_queue->rxd,
					entries * sizeof(ef4_qword_t));
}