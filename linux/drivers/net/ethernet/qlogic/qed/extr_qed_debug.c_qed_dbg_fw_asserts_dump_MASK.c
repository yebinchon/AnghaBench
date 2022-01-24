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
typedef  int /*<<< orphan*/  u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
typedef  enum dbg_status { ____Placeholder_dbg_status } dbg_status ;

/* Variables and functions */
 int DBG_STATUS_DUMP_BUF_TOO_SMALL ; 
 int DBG_STATUS_OK ; 
 int FUNC0 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ *,int) ; 

enum dbg_status FUNC3(struct qed_hwfn *p_hwfn,
					struct qed_ptt *p_ptt,
					u32 *dump_buf,
					u32 buf_size_in_dwords,
					u32 *num_dumped_dwords)
{
	u32 needed_buf_size_in_dwords, *p_size = &needed_buf_size_in_dwords;
	enum dbg_status status;

	*num_dumped_dwords = 0;

	status =
		FUNC0(p_hwfn,
						     p_ptt,
						     p_size);
	if (status != DBG_STATUS_OK)
		return status;

	if (buf_size_in_dwords < needed_buf_size_in_dwords)
		return DBG_STATUS_DUMP_BUF_TOO_SMALL;

	*num_dumped_dwords = FUNC2(p_hwfn, p_ptt, dump_buf, true);

	/* Revert GRC params to their default */
	FUNC1(p_hwfn);

	return DBG_STATUS_OK;
}