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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct hclgevf_cmq_ring {int next_to_use; int desc_num; int /*<<< orphan*/  lock; struct hclgevf_desc* desc; int /*<<< orphan*/  next_to_clean; } ;
struct TYPE_4__ {scalar_t__ tx_timeout; int last_status; struct hclgevf_cmq_ring csq; } ;
struct hclgevf_hw {TYPE_2__ cmq; scalar_t__ hdev; } ;
struct hclgevf_dev {TYPE_1__* pdev; int /*<<< orphan*/  state; } ;
struct hclgevf_desc {int /*<<< orphan*/  retval; int /*<<< orphan*/  flag; int /*<<< orphan*/  opcode; } ;
typedef  enum hclgevf_cmd_status { ____Placeholder_hclgevf_cmd_status } hclgevf_cmd_status ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBADE ; 
 int EBUSY ; 
 int /*<<< orphan*/  HCLGEVF_NIC_CSQ_HEAD_REG ; 
 int /*<<< orphan*/  HCLGEVF_NIC_CSQ_TAIL_REG ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  HCLGEVF_STATE_CMD_DISABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (struct hclgevf_hw*) ; 
 scalar_t__ FUNC4 (struct hclgevf_hw*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct hclgevf_hw*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct hclgevf_cmq_ring*) ; 
 int /*<<< orphan*/  FUNC8 (struct hclgevf_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

int FUNC15(struct hclgevf_hw *hw, struct hclgevf_desc *desc, int num)
{
	struct hclgevf_dev *hdev = (struct hclgevf_dev *)hw->hdev;
	struct hclgevf_cmq_ring *csq = &hw->cmq.csq;
	struct hclgevf_desc *desc_to_use;
	bool complete = false;
	u32 timeout = 0;
	int handle = 0;
	int status = 0;
	u16 retval;
	u16 opcode;
	int ntc;

	FUNC11(&hw->cmq.csq.lock);

	if (FUNC13(HCLGEVF_STATE_CMD_DISABLE, &hdev->state)) {
		FUNC12(&hw->cmq.csq.lock);
		return -EBUSY;
	}

	if (num > FUNC7(&hw->cmq.csq)) {
		/* If CMDQ ring is full, SW HEAD and HW HEAD may be different,
		 * need update the SW HEAD pointer csq->next_to_clean
		 */
		csq->next_to_clean = FUNC6(hw,
						      HCLGEVF_NIC_CSQ_HEAD_REG);
		FUNC12(&hw->cmq.csq.lock);
		return -EBUSY;
	}

	/* Record the location of desc in the ring for this time
	 * which will be use for hardware to write back
	 */
	ntc = hw->cmq.csq.next_to_use;
	opcode = FUNC9(desc[0].opcode);
	while (handle < num) {
		desc_to_use = &hw->cmq.csq.desc[hw->cmq.csq.next_to_use];
		*desc_to_use = desc[handle];
		(hw->cmq.csq.next_to_use)++;
		if (hw->cmq.csq.next_to_use == hw->cmq.csq.desc_num)
			hw->cmq.csq.next_to_use = 0;
		handle++;
	}

	/* Write to hardware */
	FUNC8(hw, HCLGEVF_NIC_CSQ_TAIL_REG,
			  hw->cmq.csq.next_to_use);

	/* If the command is sync, wait for the firmware to write back,
	 * if multi descriptors to be sent, use the first one to check
	 */
	if (FUNC0(FUNC9(desc->flag))) {
		do {
			if (FUNC4(hw))
				break;
			FUNC14(1);
			timeout++;
		} while (timeout < hw->cmq.tx_timeout);
	}

	if (FUNC4(hw)) {
		complete = true;
		handle = 0;

		while (handle < num) {
			/* Get the result of hardware write back */
			desc_to_use = &hw->cmq.csq.desc[ntc];
			desc[handle] = *desc_to_use;

			if (FUNC10(!FUNC5(opcode)))
				retval = FUNC9(desc[handle].retval);
			else
				retval = FUNC9(desc[0].retval);

			status = FUNC2(retval);
			hw->cmq.last_status = (enum hclgevf_cmd_status)retval;
			ntc++;
			handle++;
			if (ntc == hw->cmq.csq.desc_num)
				ntc = 0;
		}
	}

	if (!complete)
		status = -EBADE;

	/* Clean the command send queue */
	handle = FUNC3(hw);
	if (handle != num)
		FUNC1(&hdev->pdev->dev,
			 "cleaned %d, need to clean %d\n", handle, num);

	FUNC12(&hw->cmq.csq.lock);

	return status;
}