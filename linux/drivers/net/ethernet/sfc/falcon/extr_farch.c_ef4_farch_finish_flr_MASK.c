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
struct ef4_nic {int /*<<< orphan*/  active_queues; int /*<<< orphan*/  rxq_flush_outstanding; int /*<<< orphan*/  rxq_flush_pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC1(struct ef4_nic *efx)
{
	FUNC0(&efx->rxq_flush_pending, 0);
	FUNC0(&efx->rxq_flush_outstanding, 0);
	FUNC0(&efx->active_queues, 0);
}