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
struct aq_vec_s {int dummy; } ;
struct aq_nic_s {unsigned int aq_vecs; int /*<<< orphan*/  ndev; int /*<<< orphan*/  aq_hw; TYPE_1__* aq_hw_ops; struct aq_vec_s** aq_vec; int /*<<< orphan*/  fwreq_mutex; int /*<<< orphan*/  power_state; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev_addr; } ;
struct TYPE_3__ {int (* hw_reset ) (int /*<<< orphan*/ ) ;int (* hw_init ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AQ_HW_POWER_STATE_D0 ; 
 TYPE_2__* FUNC0 (struct aq_nic_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct aq_vec_s*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(struct aq_nic_s *self)
{
	struct aq_vec_s *aq_vec = NULL;
	int err = 0;
	unsigned int i = 0U;

	self->power_state = AQ_HW_POWER_STATE_D0;
	FUNC2(&self->fwreq_mutex);
	err = self->aq_hw_ops->hw_reset(self->aq_hw);
	FUNC3(&self->fwreq_mutex);
	if (err < 0)
		goto err_exit;

	err = self->aq_hw_ops->hw_init(self->aq_hw,
				       FUNC0(self)->dev_addr);
	if (err < 0)
		goto err_exit;

	for (i = 0U, aq_vec = self->aq_vec[0];
		self->aq_vecs > i; ++i, aq_vec = self->aq_vec[i])
		FUNC1(aq_vec, self->aq_hw_ops, self->aq_hw);

	FUNC4(self->ndev);

err_exit:
	return err;
}