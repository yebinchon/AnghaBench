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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct ena_com_llq_pkt_ctrl {int /*<<< orphan*/ * curr_bounce_buf; } ;
struct ena_com_llq_info {scalar_t__ descs_num_before_header; scalar_t__ desc_list_entry_size; } ;
struct ena_com_io_sq {scalar_t__ mem_queue_type; scalar_t__ desc_entry_size; struct ena_com_llq_info llq_info; struct ena_com_llq_pkt_ctrl llq_buf_ctrl; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ ENA_ADMIN_PLACEMENT_POLICY_HOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct ena_com_io_sq *io_sq,
						 u8 *header_src,
						 u16 header_len)
{
	struct ena_com_llq_pkt_ctrl *pkt_ctrl = &io_sq->llq_buf_ctrl;
	struct ena_com_llq_info *llq_info = &io_sq->llq_info;
	u8 *bounce_buffer = pkt_ctrl->curr_bounce_buf;
	u16 header_offset;

	if (FUNC2(io_sq->mem_queue_type == ENA_ADMIN_PLACEMENT_POLICY_HOST))
		return 0;

	header_offset =
		llq_info->descs_num_before_header * io_sq->desc_entry_size;

	if (FUNC2((header_offset + header_len) >
		     llq_info->desc_list_entry_size)) {
		FUNC1("trying to write header larger than llq entry can accommodate\n");
		return -EFAULT;
	}

	if (FUNC2(!bounce_buffer)) {
		FUNC1("bounce buffer is NULL\n");
		return -EFAULT;
	}

	FUNC0(bounce_buffer + header_offset, header_src, header_len);

	return 0;
}