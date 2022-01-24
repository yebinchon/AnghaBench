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
struct hw_atl_rxd_s {unsigned int hdr_addr; int /*<<< orphan*/  buf_addr; } ;
struct aq_ring_s {unsigned int sw_tail; int /*<<< orphan*/  idx; struct aq_ring_buff_s* buff_ring; int /*<<< orphan*/ * dx_ring; } ;
struct aq_ring_buff_s {int /*<<< orphan*/  pa; } ;
struct aq_hw_s {int dummy; } ;

/* Variables and functions */
 unsigned int HW_ATL_A0_RXD_SIZE ; 
 int FUNC0 (struct aq_hw_s*) ; 
 unsigned int FUNC1 (struct aq_ring_s*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct aq_hw_s*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct aq_hw_s *self,
				     struct aq_ring_s *ring,
				     unsigned int sw_tail_old)
{
	for (; sw_tail_old != ring->sw_tail;
		sw_tail_old = FUNC1(ring, sw_tail_old)) {
		struct hw_atl_rxd_s *rxd =
			(struct hw_atl_rxd_s *)&ring->dx_ring[sw_tail_old *
							HW_ATL_A0_RXD_SIZE];

		struct aq_ring_buff_s *buff = &ring->buff_ring[sw_tail_old];

		rxd->buf_addr = buff->pa;
		rxd->hdr_addr = 0U;
	}

	FUNC2(self, sw_tail_old, ring->idx);

	return FUNC0(self);
}