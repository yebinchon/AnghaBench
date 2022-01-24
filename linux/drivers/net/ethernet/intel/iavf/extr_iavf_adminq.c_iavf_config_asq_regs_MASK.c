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
struct TYPE_5__ {TYPE_1__ desc_buf; int /*<<< orphan*/  bal; int /*<<< orphan*/  bah; int /*<<< orphan*/  len; int /*<<< orphan*/  tail; int /*<<< orphan*/  head; } ;
struct TYPE_6__ {int num_asq_entries; TYPE_2__ asq; } ;
struct iavf_hw {TYPE_3__ aq; } ;
typedef  enum iavf_status { ____Placeholder_iavf_status } iavf_status ;

/* Variables and functions */
 int IAVF_ERR_ADMIN_QUEUE_ERROR ; 
 int IAVF_VF_ATQLEN1_ATQENABLE_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct iavf_hw*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iavf_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static enum iavf_status FUNC4(struct iavf_hw *hw)
{
	enum iavf_status ret_code = 0;
	u32 reg = 0;

	/* Clear Head and Tail */
	FUNC3(hw, hw->aq.asq.head, 0);
	FUNC3(hw, hw->aq.asq.tail, 0);

	/* set starting point */
	FUNC3(hw, hw->aq.asq.len, (hw->aq.num_asq_entries |
				  IAVF_VF_ATQLEN1_ATQENABLE_MASK));
	FUNC3(hw, hw->aq.asq.bal, FUNC0(hw->aq.asq.desc_buf.pa));
	FUNC3(hw, hw->aq.asq.bah, FUNC2(hw->aq.asq.desc_buf.pa));

	/* Check one register to verify that config was applied */
	reg = FUNC1(hw, hw->aq.asq.bal);
	if (reg != FUNC0(hw->aq.asq.desc_buf.pa))
		ret_code = IAVF_ERR_ADMIN_QUEUE_ERROR;

	return ret_code;
}