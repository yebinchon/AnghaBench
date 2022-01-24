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
struct aq_ring_s {int size; int dx_size; int /*<<< orphan*/  dx_ring; int /*<<< orphan*/  dx_ring_pa; int /*<<< orphan*/  buff_ring; } ;
struct aq_ring_buff_s {int dummy; } ;
struct aq_nic_s {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct aq_nic_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct aq_ring_s*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct aq_ring_s *FUNC4(struct aq_ring_s *self,
				       struct aq_nic_s *aq_nic)
{
	int err = 0;

	self->buff_ring =
		FUNC3(self->size, sizeof(struct aq_ring_buff_s), GFP_KERNEL);

	if (!self->buff_ring) {
		err = -ENOMEM;
		goto err_exit;
	}
	self->dx_ring = FUNC2(FUNC0(aq_nic),
					   self->size * self->dx_size,
					   &self->dx_ring_pa, GFP_KERNEL);
	if (!self->dx_ring) {
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