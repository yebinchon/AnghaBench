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
struct aq_nic_s {int /*<<< orphan*/ ** aq_vec; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct aq_nic_s *self)
{
	unsigned int i = 0U;

	if (!self)
		goto err_exit;

	for (i = FUNC0(self->aq_vec); i--;) {
		if (self->aq_vec[i]) {
			FUNC1(self->aq_vec[i]);
			self->aq_vec[i] = NULL;
		}
	}

err_exit:;
}