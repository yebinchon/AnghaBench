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
struct aq_ring_s {int size; int dx_size; int /*<<< orphan*/  dx_ring_pa; scalar_t__ dx_ring; int /*<<< orphan*/  aq_nic; int /*<<< orphan*/  buff_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct aq_ring_s *self)
{
	if (!self)
		goto err_exit;

	FUNC2(self->buff_ring);

	if (self->dx_ring)
		FUNC1(FUNC0(self->aq_nic),
				  self->size * self->dx_size, self->dx_ring,
				  self->dx_ring_pa);

err_exit:;
}