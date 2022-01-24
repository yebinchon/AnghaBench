#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct efx_rx_queue {struct efx_nic* efx; } ;
struct efx_rx_buffer {unsigned int len; int /*<<< orphan*/  flags; } ;
struct efx_nic {int /*<<< orphan*/  net_dev; TYPE_1__* type; } ;
struct TYPE_4__ {int /*<<< orphan*/  n_rx_overlength; } ;
struct TYPE_3__ {unsigned int rx_buffer_padding; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFX_RX_PKT_DISCARD ; 
 TYPE_2__* FUNC0 (struct efx_rx_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_rx_queue*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  rx_err ; 

__attribute__((used)) static void FUNC5(struct efx_rx_queue *rx_queue,
				     struct efx_rx_buffer *rx_buf,
				     int len)
{
	struct efx_nic *efx = rx_queue->efx;
	unsigned max_len = rx_buf->len - efx->type->rx_buffer_padding;

	if (FUNC2(len <= max_len))
		return;

	/* The packet must be discarded, but this is only a fatal error
	 * if the caller indicated it was
	 */
	rx_buf->flags |= EFX_RX_PKT_DISCARD;

	if (FUNC3())
		FUNC4(efx, rx_err, efx->net_dev,
			  "RX queue %d overlength RX event (%#x > %#x)\n",
			  FUNC1(rx_queue), len, max_len);

	FUNC0(rx_queue)->n_rx_overlength++;
}