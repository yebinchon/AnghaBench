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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int u16 ;
struct hinic_wq {int wqebb_size; int q_depth; } ;
struct TYPE_2__ {int /*<<< orphan*/  direct_resp; } ;
struct hinic_cmdq_wqe_lcmd {TYPE_1__ completion; } ;
struct hinic_cmdq_wqe {struct hinic_cmdq_wqe_lcmd wqe_lcmd; } ;
struct hinic_hw_wqe {struct hinic_cmdq_wqe cmdq_wqe; } ;
struct hinic_cmdq_buf {int dummy; } ;
struct hinic_cmdq {int wrapped; int** errcode; int /*<<< orphan*/  cmdq_lock; struct completion** done; struct hinic_wq* wq; } ;
struct completion {int dummy; } ;
typedef  enum hinic_mod_type { ____Placeholder_hinic_mod_type } hinic_mod_type ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  CMDQ_CMD_SYNC_DIRECT_RESP ; 
 int /*<<< orphan*/  CMDQ_TIMEOUT ; 
 int EBUSY ; 
 int EFAULT ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HINIC_CMDQ_SYNC ; 
 int /*<<< orphan*/  HINIC_CMD_ACK_TYPE_CMDQ ; 
 scalar_t__ FUNC1 (struct hinic_hw_wqe*) ; 
 int /*<<< orphan*/  WQE_LCMD_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct hinic_cmdq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hinic_cmdq_wqe*,int /*<<< orphan*/ ,struct hinic_cmdq_buf*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hinic_cmdq_wqe*,struct hinic_cmdq_wqe*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hinic_cmdq_wqe*,int /*<<< orphan*/ ) ; 
 struct hinic_hw_wqe* FUNC7 (struct hinic_wq*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct completion*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct completion*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct hinic_cmdq *cmdq,
				     enum hinic_mod_type mod, u8 cmd,
				     struct hinic_cmdq_buf *buf_in,
				     u64 *resp)
{
	struct hinic_cmdq_wqe *curr_cmdq_wqe, cmdq_wqe;
	u16 curr_prod_idx, next_prod_idx;
	int errcode, wrapped, num_wqebbs;
	struct hinic_wq *wq = cmdq->wq;
	struct hinic_hw_wqe *hw_wqe;
	struct completion done;

	/* Keep doorbell index correct. bh - for tasklet(ceq). */
	FUNC10(&cmdq->cmdq_lock);

	/* WQE_SIZE = WQEBB_SIZE, we will get the wq element and not shadow*/
	hw_wqe = FUNC7(wq, WQE_LCMD_SIZE, &curr_prod_idx);
	if (FUNC1(hw_wqe)) {
		FUNC11(&cmdq->cmdq_lock);
		return -EBUSY;
	}

	curr_cmdq_wqe = &hw_wqe->cmdq_wqe;

	wrapped = cmdq->wrapped;

	num_wqebbs = FUNC0(WQE_LCMD_SIZE, wq->wqebb_size) / wq->wqebb_size;
	next_prod_idx = curr_prod_idx + num_wqebbs;
	if (next_prod_idx >= wq->q_depth) {
		cmdq->wrapped = !cmdq->wrapped;
		next_prod_idx -= wq->q_depth;
	}

	cmdq->errcode[curr_prod_idx] = &errcode;

	FUNC8(&done);
	cmdq->done[curr_prod_idx] = &done;

	FUNC3(&cmdq_wqe, CMDQ_CMD_SYNC_DIRECT_RESP, buf_in, NULL,
			  wrapped, HINIC_CMD_ACK_TYPE_CMDQ, mod, cmd,
			  curr_prod_idx);

	/* The data that is written to HW should be in Big Endian Format */
	FUNC6(&cmdq_wqe, WQE_LCMD_SIZE);

	/* CMDQ WQE is not shadow, therefore wqe will be written to wq */
	FUNC4(curr_cmdq_wqe, &cmdq_wqe);

	FUNC2(cmdq, HINIC_CMDQ_SYNC, next_prod_idx);

	FUNC11(&cmdq->cmdq_lock);

	if (!FUNC12(&done, CMDQ_TIMEOUT)) {
		FUNC10(&cmdq->cmdq_lock);

		if (cmdq->errcode[curr_prod_idx] == &errcode)
			cmdq->errcode[curr_prod_idx] = NULL;

		if (cmdq->done[curr_prod_idx] == &done)
			cmdq->done[curr_prod_idx] = NULL;

		FUNC11(&cmdq->cmdq_lock);

		return -ETIMEDOUT;
	}

	FUNC9();      /* read error code after completion */

	if (resp) {
		struct hinic_cmdq_wqe_lcmd *wqe_lcmd = &curr_cmdq_wqe->wqe_lcmd;

		*resp = FUNC5(wqe_lcmd->completion.direct_resp);
	}

	if (errcode != 0)
		return -EFAULT;

	return 0;
}