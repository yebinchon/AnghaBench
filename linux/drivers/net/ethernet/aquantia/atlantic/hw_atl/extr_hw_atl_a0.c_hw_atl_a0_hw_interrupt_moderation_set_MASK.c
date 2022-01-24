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
typedef  int u32 ;
struct TYPE_4__ {int mbps; } ;
struct aq_hw_s {TYPE_2__ aq_link_status; TYPE_1__* aq_nic_cfg; } ;
struct TYPE_3__ {int itr; } ;

/* Variables and functions */
 int AQ_CFG_INTERRUPT_MODERATION_AUTO ; 
 int /*<<< orphan*/  AQ_CFG_IRQ_MASK ; 
 unsigned int HW_ATL_A0_RINGS_MAX ; 
 int FUNC0 (struct aq_hw_s*) ; 
 int FUNC1 (struct aq_hw_s*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct aq_hw_s*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct aq_hw_s*,int,unsigned int) ; 
 unsigned int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct aq_hw_s *self)
{
	unsigned int i = 0U;
	u32 itr_rx;

	if (self->aq_nic_cfg->itr) {
		if (self->aq_nic_cfg->itr != AQ_CFG_INTERRUPT_MODERATION_AUTO) {
			u32 itr_ = (self->aq_nic_cfg->itr >> 1);

			itr_ = FUNC5(AQ_CFG_IRQ_MASK, itr_);

			itr_rx = 0x80000000U | (itr_ << 0x10);
		} else  {
			u32 n = 0xFFFFU & FUNC1(self, 0x00002A00U);

			if (n < self->aq_link_status.mbps) {
				itr_rx = 0U;
			} else {
				static unsigned int hw_timers_tbl_[] = {
					0x01CU, /* 10Gbit */
					0x039U, /* 5Gbit */
					0x039U, /* 5Gbit 5GS */
					0x073U, /* 2.5Gbit */
					0x120U, /* 1Gbit */
					0x1FFU, /* 100Mbit */
				};

				unsigned int speed_index =
					FUNC4(
						self->aq_link_status.mbps);

				itr_rx = 0x80000000U |
					(hw_timers_tbl_[speed_index] << 0x10U);
			}

			FUNC2(self, 0x00002A00U, 0x40000000U);
			FUNC2(self, 0x00002A00U, 0x8D000000U);
		}
	} else {
		itr_rx = 0U;
	}

	for (i = HW_ATL_A0_RINGS_MAX; i--;)
		FUNC3(self, itr_rx, i);

	return FUNC0(self);
}