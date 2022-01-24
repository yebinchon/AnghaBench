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
struct aq_ring_s {unsigned int idx; int /*<<< orphan*/  dx_size; int /*<<< orphan*/  size; struct aq_nic_s* aq_nic; } ;
struct aq_nic_s {int dummy; } ;
struct aq_nic_cfg_s {TYPE_1__* aq_hw_caps; int /*<<< orphan*/  txds; } ;
struct TYPE_2__ {int /*<<< orphan*/  txd_size; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct aq_ring_s* FUNC0 (struct aq_ring_s*,struct aq_nic_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct aq_ring_s*) ; 

struct aq_ring_s *FUNC2(struct aq_ring_s *self,
				   struct aq_nic_s *aq_nic,
				   unsigned int idx,
				   struct aq_nic_cfg_s *aq_nic_cfg)
{
	int err = 0;

	self->aq_nic = aq_nic;
	self->idx = idx;
	self->size = aq_nic_cfg->txds;
	self->dx_size = aq_nic_cfg->aq_hw_caps->txd_size;

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