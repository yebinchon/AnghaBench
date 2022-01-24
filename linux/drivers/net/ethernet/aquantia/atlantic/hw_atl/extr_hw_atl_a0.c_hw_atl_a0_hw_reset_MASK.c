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
typedef  scalar_t__ u32 ;
struct aq_hw_s {TYPE_1__* aq_fw_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_state ) (struct aq_hw_s*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  MPI_RESET ; 
 int FUNC1 (struct aq_hw_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct aq_hw_s*,unsigned int) ; 
 int /*<<< orphan*/  hw_atl_glb_soft_res_get ; 
 int /*<<< orphan*/  FUNC3 (struct aq_hw_s*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct aq_hw_s*,unsigned int) ; 
 int /*<<< orphan*/  hw_atl_itr_res_irq_get ; 
 int /*<<< orphan*/  FUNC5 (struct aq_hw_s*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct aq_hw_s*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct aq_hw_s*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct aq_hw_s*,unsigned int) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct aq_hw_s*,scalar_t__,int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct aq_hw_s*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct aq_hw_s *self)
{
	int err = 0;
	u32 val;

	FUNC2(self, 1U);
	FUNC6(self, 0U);
	FUNC7(self, 0U);
	FUNC8(self, 0U);

	FUNC0();
	FUNC3(self, 1);

	/* check 10 times by 1ms */
	err = FUNC9(hw_atl_glb_soft_res_get,
					self, val, val == 0,
					1000U, 10000U);
	if (err < 0)
		goto err_exit;

	FUNC4(self, 0U);
	FUNC5(self, 1U);

	/* check 10 times by 1ms */
	err = FUNC9(hw_atl_itr_res_irq_get,
					self, val, val == 0,
					1000U, 10000U);
	if (err < 0)
		goto err_exit;

	self->aq_fw_ops->set_state(self, MPI_RESET);

	err = FUNC1(self);

err_exit:
	return err;
}