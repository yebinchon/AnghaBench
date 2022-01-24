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
struct aq_ring_s {unsigned int idx; scalar_t__ page_order; int /*<<< orphan*/  dx_size; int /*<<< orphan*/  size; struct aq_nic_s* aq_nic; } ;
struct aq_nic_s {int dummy; } ;
struct aq_nic_cfg_s {scalar_t__ rxpageorder; TYPE_1__* aq_hw_caps; int /*<<< orphan*/  rxds; } ;
struct TYPE_2__ {int /*<<< orphan*/  rxd_size; } ;

/* Variables and functions */
 int AQ_CFG_RX_FRAME_MAX ; 
 int ENOMEM ; 
 int PAGE_SIZE ; 
 struct aq_ring_s* FUNC0 (struct aq_ring_s*,struct aq_nic_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct aq_ring_s*) ; 
 scalar_t__ FUNC2 (int) ; 

struct aq_ring_s *FUNC3(struct aq_ring_s *self,
				   struct aq_nic_s *aq_nic,
				   unsigned int idx,
				   struct aq_nic_cfg_s *aq_nic_cfg)
{
	int err = 0;

	self->aq_nic = aq_nic;
	self->idx = idx;
	self->size = aq_nic_cfg->rxds;
	self->dx_size = aq_nic_cfg->aq_hw_caps->rxd_size;
	self->page_order = FUNC2(AQ_CFG_RX_FRAME_MAX / PAGE_SIZE +
			       (AQ_CFG_RX_FRAME_MAX % PAGE_SIZE ? 1 : 0)) - 1;

	if (aq_nic_cfg->rxpageorder > self->page_order)
		self->page_order = aq_nic_cfg->rxpageorder;

	self = FUNC0(self, aq_nic);
	if (!self) {
		err = -ENOMEM;
		goto err_exit;
	}

err_exit:
	if (err < 0) {
		FUNC1(self);
		self = NULL;
	}
	return self;
}