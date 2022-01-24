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
struct device {int dummy; } ;
struct aq_ring_s {scalar_t__ sw_head; scalar_t__ hw_head; struct aq_ring_buff_s* buff_ring; int /*<<< orphan*/  aq_nic; } ;
struct aq_ring_buff_s {int eop_index; unsigned int pa; int /*<<< orphan*/  skb; int /*<<< orphan*/  is_eop; int /*<<< orphan*/  len; int /*<<< orphan*/  is_sop; int /*<<< orphan*/  is_mapped; } ;

/* Variables and functions */
 unsigned int AQ_CFG_TX_CLEAN_BUDGET ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 struct device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int,scalar_t__) ; 
 size_t FUNC2 (struct aq_ring_s*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

bool FUNC8(struct aq_ring_s *self)
{
	struct device *dev = FUNC0(self->aq_nic);
	unsigned int budget;

	for (budget = AQ_CFG_TX_CLEAN_BUDGET;
	     budget && self->sw_head != self->hw_head; budget--) {
		struct aq_ring_buff_s *buff = &self->buff_ring[self->sw_head];

		if (FUNC6(buff->is_mapped)) {
			if (FUNC7(buff->is_sop)) {
				if (!buff->is_eop &&
				    buff->eop_index != 0xffffU &&
				    (!FUNC1(self->sw_head,
						buff->eop_index,
						self->hw_head)))
					break;

				FUNC5(dev, buff->pa, buff->len,
						 DMA_TO_DEVICE);
			} else {
				FUNC4(dev, buff->pa, buff->len,
					       DMA_TO_DEVICE);
			}
		}

		if (FUNC7(buff->is_eop))
			FUNC3(buff->skb);

		buff->pa = 0U;
		buff->eop_index = 0xffffU;
		self->sw_head = FUNC2(self, self->sw_head);
	}

	return !!budget;
}