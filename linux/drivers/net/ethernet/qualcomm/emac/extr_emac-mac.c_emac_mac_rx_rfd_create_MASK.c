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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {scalar_t__ produce_idx; scalar_t__ count; } ;
struct emac_rx_queue {TYPE_1__ rfd; } ;
struct emac_adapter {int /*<<< orphan*/  rfd_size; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct emac_rx_queue*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct emac_adapter *adpt,
				   struct emac_rx_queue *rx_q,
				   dma_addr_t addr)
{
	u32 *hw_rfd = FUNC0(rx_q, adpt->rfd_size, rx_q->rfd.produce_idx);

	*(hw_rfd++) = FUNC1(addr);
	*hw_rfd = FUNC2(addr);

	if (++rx_q->rfd.produce_idx == rx_q->rfd.count)
		rx_q->rfd.produce_idx = 0;
}