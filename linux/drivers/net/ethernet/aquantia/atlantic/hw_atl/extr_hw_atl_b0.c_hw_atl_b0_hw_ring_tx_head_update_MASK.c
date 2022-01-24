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
struct aq_ring_s {unsigned int hw_head; int /*<<< orphan*/  idx; } ;
struct aq_hw_s {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AQ_HW_FLAG_ERR_UNPLUG ; 
 int ENXIO ; 
 int FUNC0 (struct aq_hw_s*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct aq_hw_s*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct aq_hw_s *self,
					    struct aq_ring_s *ring)
{
	int err = 0;
	unsigned int hw_head_ = FUNC2(self, ring->idx);

	if (FUNC1(&self->flags, AQ_HW_FLAG_ERR_UNPLUG)) {
		err = -ENXIO;
		goto err_exit;
	}
	ring->hw_head = hw_head_;
	err = FUNC0(self);

err_exit:
	return err;
}