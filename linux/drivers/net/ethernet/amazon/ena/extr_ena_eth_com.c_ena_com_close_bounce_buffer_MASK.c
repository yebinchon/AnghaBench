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
struct ena_com_llq_pkt_ctrl {int /*<<< orphan*/  descs_left_in_line; scalar_t__ idx; int /*<<< orphan*/  curr_bounce_buf; } ;
struct ena_com_llq_info {int /*<<< orphan*/  descs_num_before_header; int /*<<< orphan*/  desc_list_entry_size; } ;
struct ena_com_io_sq {scalar_t__ mem_queue_type; struct ena_com_llq_pkt_ctrl llq_buf_ctrl; int /*<<< orphan*/  bounce_buf_ctrl; struct ena_com_llq_info llq_info; } ;

/* Variables and functions */
 scalar_t__ ENA_ADMIN_PLACEMENT_POLICY_HOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ena_com_io_sq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct ena_com_io_sq *io_sq)
{
	struct ena_com_llq_pkt_ctrl *pkt_ctrl = &io_sq->llq_buf_ctrl;
	struct ena_com_llq_info *llq_info = &io_sq->llq_info;
	int rc;

	if (FUNC3(io_sq->mem_queue_type == ENA_ADMIN_PLACEMENT_POLICY_HOST))
		return 0;

	/* bounce buffer was used, so write it and get a new one */
	if (pkt_ctrl->idx) {
		rc = FUNC1(io_sq,
							pkt_ctrl->curr_bounce_buf);
		if (FUNC3(rc))
			return rc;

		pkt_ctrl->curr_bounce_buf =
			FUNC0(&io_sq->bounce_buf_ctrl);
		FUNC2(io_sq->llq_buf_ctrl.curr_bounce_buf,
		       0x0, llq_info->desc_list_entry_size);
	}

	pkt_ctrl->idx = 0;
	pkt_ctrl->descs_left_in_line = llq_info->descs_num_before_header;
	return 0;
}