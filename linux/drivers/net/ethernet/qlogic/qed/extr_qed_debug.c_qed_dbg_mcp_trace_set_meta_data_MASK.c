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
struct qed_hwfn {int dummy; } ;
struct dbg_tools_user_data {int /*<<< orphan*/  const* mcp_trace_user_meta_buf; } ;

/* Variables and functions */
 struct dbg_tools_user_data* FUNC0 (struct qed_hwfn*) ; 

void FUNC1(struct qed_hwfn *p_hwfn,
				     const u32 *meta_buf)
{
	struct dbg_tools_user_data *dev_user_data =
		FUNC0(p_hwfn);

	dev_user_data->mcp_trace_user_meta_buf = meta_buf;
}