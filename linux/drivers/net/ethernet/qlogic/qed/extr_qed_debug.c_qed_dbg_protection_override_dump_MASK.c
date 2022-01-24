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
typedef  scalar_t__ u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
typedef  enum dbg_status { ____Placeholder_dbg_status } dbg_status ;

/* Variables and functions */
 int DBG_STATUS_DUMP_BUF_TOO_SMALL ; 
 int DBG_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*) ; 
 int FUNC1 (struct qed_hwfn*,struct qed_ptt*,scalar_t__*) ; 
 int FUNC2 (struct qed_hwfn*,struct qed_ptt*,scalar_t__*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*,struct qed_ptt*) ; 

enum dbg_status FUNC4(struct qed_hwfn *p_hwfn,
						 struct qed_ptt *p_ptt,
						 u32 *dump_buf,
						 u32 buf_size_in_dwords,
						 u32 *num_dumped_dwords)
{
	u32 needed_buf_size_in_dwords, *p_size = &needed_buf_size_in_dwords;
	enum dbg_status status;

	*num_dumped_dwords = 0;

	status =
		FUNC1(p_hwfn,
							      p_ptt,
							      p_size);
	if (status != DBG_STATUS_OK)
		return status;

	if (buf_size_in_dwords < needed_buf_size_in_dwords)
		return DBG_STATUS_DUMP_BUF_TOO_SMALL;

	/* Update reset state */
	FUNC3(p_hwfn, p_ptt);

	status = FUNC2(p_hwfn,
					      p_ptt,
					      dump_buf,
					      true, num_dumped_dwords);

	/* Revert GRC params to their default */
	FUNC0(p_hwfn);

	return status;
}