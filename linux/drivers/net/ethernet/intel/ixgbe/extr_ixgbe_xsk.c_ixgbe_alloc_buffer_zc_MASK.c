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
typedef  scalar_t__ u64 ;
struct xdp_umem {scalar_t__ headroom; } ;
struct ixgbe_rx_buffer {int /*<<< orphan*/  handle; void* addr; int /*<<< orphan*/  dma; } ;
struct TYPE_2__ {int /*<<< orphan*/  alloc_rx_page_failed; } ;
struct ixgbe_ring {TYPE_1__ rx_stats; struct xdp_umem* xsk_umem; } ;

/* Variables and functions */
 scalar_t__ XDP_PACKET_HEADROOM ; 
 void* FUNC0 (struct xdp_umem*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct xdp_umem*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct xdp_umem*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct xdp_umem*) ; 
 int /*<<< orphan*/  FUNC4 (struct xdp_umem*,scalar_t__*) ; 

__attribute__((used)) static bool FUNC5(struct ixgbe_ring *rx_ring,
				  struct ixgbe_rx_buffer *bi)
{
	struct xdp_umem *umem = rx_ring->xsk_umem;
	void *addr = bi->addr;
	u64 handle, hr;

	if (addr)
		return true;

	if (!FUNC4(umem, &handle)) {
		rx_ring->rx_stats.alloc_rx_page_failed++;
		return false;
	}

	hr = umem->headroom + XDP_PACKET_HEADROOM;

	bi->dma = FUNC1(umem, handle);
	bi->dma += hr;

	bi->addr = FUNC0(umem, handle);
	bi->addr += hr;

	bi->handle = FUNC2(umem, handle, umem->headroom);

	FUNC3(umem);
	return true;
}