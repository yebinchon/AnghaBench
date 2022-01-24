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
struct efx_rx_queue {unsigned int ptr_mask; struct efx_nic* efx; } ;
struct efx_nic {int /*<<< orphan*/  net_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  RESET_TYPE_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (struct efx_nic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static void
FUNC2(struct efx_rx_queue *rx_queue,
			     unsigned int actual, unsigned int expected)
{
	unsigned int dropped = (actual - expected) & rx_queue->ptr_mask;
	struct efx_nic *efx = rx_queue->efx;

	FUNC1(efx, hw, efx->net_dev,
		   "dropped %d events (index=%d expected=%d)\n",
		   dropped, actual, expected);

	FUNC0(efx, RESET_TYPE_DISABLE);
}