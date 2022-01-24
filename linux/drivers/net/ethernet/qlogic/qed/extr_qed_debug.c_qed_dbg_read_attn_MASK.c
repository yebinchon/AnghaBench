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
typedef  size_t u8 ;
typedef  size_t u32 ;
typedef  size_t u16 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct dbg_attn_reg_result {size_t sts_val; void* mask_val; int /*<<< orphan*/  block_attn_offset; int /*<<< orphan*/  data; } ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
struct dbg_attn_reg {size_t sts_clr_address; size_t mask_address; int /*<<< orphan*/  block_attn_offset; int /*<<< orphan*/  data; TYPE_1__ mode; } ;
struct dbg_attn_block_result {size_t block_id; int /*<<< orphan*/  data; int /*<<< orphan*/  names_offset; struct dbg_attn_reg_result* reg_results; } ;
typedef  enum dbg_status { ____Placeholder_dbg_status } dbg_status ;
typedef  enum dbg_attn_type { ____Placeholder_dbg_attn_type } dbg_attn_type ;
typedef  enum block_id { ____Placeholder_block_id } block_id ;
struct TYPE_6__ {int /*<<< orphan*/  names_offset; } ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;

/* Variables and functions */
 size_t BIN_BUF_DBG_ATTN_BLOCKS ; 
 size_t BIN_BUF_DBG_ATTN_REGS ; 
 size_t BIN_BUF_DBG_MODE_TREE ; 
 int /*<<< orphan*/  DBG_ATTN_BLOCK_RESULT_ATTN_TYPE ; 
 int /*<<< orphan*/  DBG_ATTN_BLOCK_RESULT_NUM_REGS ; 
 int /*<<< orphan*/  DBG_ATTN_REG_NUM_REG_ATTN ; 
 int /*<<< orphan*/  DBG_ATTN_REG_RESULT_NUM_REG_ATTN ; 
 int /*<<< orphan*/  DBG_ATTN_REG_RESULT_STS_ADDRESS ; 
 int /*<<< orphan*/  DBG_ATTN_REG_STS_ADDRESS ; 
 int /*<<< orphan*/  DBG_MODE_HDR_EVAL_MODE ; 
 int /*<<< orphan*/  DBG_MODE_HDR_MODES_BUF_OFFSET ; 
 int DBG_STATUS_DBG_ARRAY_NOT_SET ; 
 int DBG_STATUS_OK ; 
 size_t FUNC0 (size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int FUNC3 (struct qed_hwfn*,struct qed_ptt*) ; 
 TYPE_3__* FUNC4 (int,int) ; 
 struct dbg_attn_reg* FUNC5 (int,int,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (struct qed_hwfn*,size_t*) ; 
 void* FUNC7 (struct qed_hwfn*,struct qed_ptt*,size_t) ; 
 TYPE_2__* s_dbg_arrays ; 

enum dbg_status FUNC8(struct qed_hwfn *p_hwfn,
				  struct qed_ptt *p_ptt,
				  enum block_id block_id,
				  enum dbg_attn_type attn_type,
				  bool clear_status,
				  struct dbg_attn_block_result *results)
{
	enum dbg_status status = FUNC3(p_hwfn, p_ptt);
	u8 reg_idx, num_attn_regs, num_result_regs = 0;
	const struct dbg_attn_reg *attn_reg_arr;

	if (status != DBG_STATUS_OK)
		return status;

	if (!s_dbg_arrays[BIN_BUF_DBG_MODE_TREE].ptr ||
	    !s_dbg_arrays[BIN_BUF_DBG_ATTN_BLOCKS].ptr ||
	    !s_dbg_arrays[BIN_BUF_DBG_ATTN_REGS].ptr)
		return DBG_STATUS_DBG_ARRAY_NOT_SET;

	attn_reg_arr = FUNC5(block_id,
					       attn_type, &num_attn_regs);

	for (reg_idx = 0; reg_idx < num_attn_regs; reg_idx++) {
		const struct dbg_attn_reg *reg_data = &attn_reg_arr[reg_idx];
		struct dbg_attn_reg_result *reg_result;
		u32 sts_addr, sts_val;
		u16 modes_buf_offset;
		bool eval_mode;

		/* Check mode */
		eval_mode = FUNC1(reg_data->mode.data,
				      DBG_MODE_HDR_EVAL_MODE) > 0;
		modes_buf_offset = FUNC1(reg_data->mode.data,
					     DBG_MODE_HDR_MODES_BUF_OFFSET);
		if (eval_mode && !FUNC6(p_hwfn, &modes_buf_offset))
			continue;

		/* Mode match - read attention status register */
		sts_addr = FUNC0(clear_status ?
					   reg_data->sts_clr_address :
					   FUNC1(reg_data->data,
						     DBG_ATTN_REG_STS_ADDRESS));
		sts_val = FUNC7(p_hwfn, p_ptt, sts_addr);
		if (!sts_val)
			continue;

		/* Non-zero attention status - add to results */
		reg_result = &results->reg_results[num_result_regs];
		FUNC2(reg_result->data,
			  DBG_ATTN_REG_RESULT_STS_ADDRESS, sts_addr);
		FUNC2(reg_result->data,
			  DBG_ATTN_REG_RESULT_NUM_REG_ATTN,
			  FUNC1(reg_data->data, DBG_ATTN_REG_NUM_REG_ATTN));
		reg_result->block_attn_offset = reg_data->block_attn_offset;
		reg_result->sts_val = sts_val;
		reg_result->mask_val = FUNC7(p_hwfn,
					      p_ptt,
					      FUNC0
					      (reg_data->mask_address));
		num_result_regs++;
	}

	results->block_id = (u8)block_id;
	results->names_offset =
	    FUNC4(block_id, attn_type)->names_offset;
	FUNC2(results->data, DBG_ATTN_BLOCK_RESULT_ATTN_TYPE, attn_type);
	FUNC2(results->data,
		  DBG_ATTN_BLOCK_RESULT_NUM_REGS, num_result_regs);

	return DBG_STATUS_OK;
}