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
struct ef4_rx_queue {int scatter_n; int removed_count; int ptr_mask; struct ef4_nic* efx; } ;
struct ef4_nic {int /*<<< orphan*/  net_dev; } ;
struct ef4_channel {int /*<<< orphan*/  n_rx_nodesc_trunc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ef4_nic*) ; 
 int /*<<< orphan*/  RESET_TYPE_DISABLE ; 
 int /*<<< orphan*/  RESET_TYPE_RX_RECOVERY ; 
 struct ef4_channel* FUNC1 (struct ef4_rx_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct ef4_nic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  rx_err ; 

__attribute__((used)) static bool
FUNC4(struct ef4_rx_queue *rx_queue, unsigned index)
{
	struct ef4_channel *channel = FUNC1(rx_queue);
	struct ef4_nic *efx = rx_queue->efx;
	unsigned expected, dropped;

	if (rx_queue->scatter_n &&
	    index == ((rx_queue->removed_count + rx_queue->scatter_n - 1) &
		      rx_queue->ptr_mask)) {
		++channel->n_rx_nodesc_trunc;
		return true;
	}

	expected = rx_queue->removed_count & rx_queue->ptr_mask;
	dropped = (index - expected) & rx_queue->ptr_mask;
	FUNC3(efx, rx_err, efx->net_dev,
		   "dropped %d events (index=%d expected=%d)\n",
		   dropped, index, expected);

	FUNC2(efx, FUNC0(efx) ?
			   RESET_TYPE_RX_RECOVERY : RESET_TYPE_DISABLE);
	return false;
}