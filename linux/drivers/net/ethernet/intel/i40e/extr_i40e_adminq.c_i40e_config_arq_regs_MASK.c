#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  pa; } ;
struct TYPE_5__ {TYPE_1__ desc_buf; int /*<<< orphan*/  bal; int /*<<< orphan*/  tail; int /*<<< orphan*/  bah; int /*<<< orphan*/  len; int /*<<< orphan*/  head; } ;
struct TYPE_6__ {int num_arq_entries; TYPE_2__ arq; } ;
struct i40e_hw {TYPE_3__ aq; } ;
typedef  int /*<<< orphan*/  i40e_status ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_ERR_ADMIN_QUEUE_ERROR ; 
 int I40E_PF_ARQLEN_ARQENABLE_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static i40e_status FUNC4(struct i40e_hw *hw)
{
	i40e_status ret_code = 0;
	u32 reg = 0;

	/* Clear Head and Tail */
	FUNC3(hw, hw->aq.arq.head, 0);
	FUNC3(hw, hw->aq.arq.tail, 0);

	/* set starting point */
	FUNC3(hw, hw->aq.arq.len, (hw->aq.num_arq_entries |
				  I40E_PF_ARQLEN_ARQENABLE_MASK));
	FUNC3(hw, hw->aq.arq.bal, FUNC0(hw->aq.arq.desc_buf.pa));
	FUNC3(hw, hw->aq.arq.bah, FUNC2(hw->aq.arq.desc_buf.pa));

	/* Update tail in the HW to post pre-allocated buffers */
	FUNC3(hw, hw->aq.arq.tail, hw->aq.num_arq_entries - 1);

	/* Check one register to verify that config was applied */
	reg = FUNC1(hw, hw->aq.arq.bal);
	if (reg != FUNC0(hw->aq.arq.desc_buf.pa))
		ret_code = I40E_ERR_ADMIN_QUEUE_ERROR;

	return ret_code;
}