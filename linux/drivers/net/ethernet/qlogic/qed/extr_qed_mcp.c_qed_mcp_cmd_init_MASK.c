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
typedef  int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_mcp_info {void* mfw_mb_shadow; void* mfw_mb_cur; int /*<<< orphan*/  mfw_mb_length; int /*<<< orphan*/  cmd_list; int /*<<< orphan*/  link_lock; int /*<<< orphan*/  cmd_lock; } ;
struct qed_hwfn {struct qed_mcp_info* mcp_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct qed_hwfn*,struct qed_ptt*) ; 
 int /*<<< orphan*/  FUNC5 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
	struct qed_mcp_info *p_info;
	u32 size;

	/* Allocate mcp_info structure */
	p_hwfn->mcp_info = FUNC3(sizeof(*p_hwfn->mcp_info), GFP_KERNEL);
	if (!p_hwfn->mcp_info)
		goto err;
	p_info = p_hwfn->mcp_info;

	/* Initialize the MFW spinlock */
	FUNC6(&p_info->cmd_lock);
	FUNC6(&p_info->link_lock);

	FUNC1(&p_info->cmd_list);

	if (FUNC4(p_hwfn, p_ptt) != 0) {
		FUNC0(p_hwfn, "MCP is not initialized\n");
		/* Do not free mcp_info here, since public_base indicate that
		 * the MCP is not initialized
		 */
		return 0;
	}

	size = FUNC2(p_info->mfw_mb_length) * sizeof(u32);
	p_info->mfw_mb_cur = FUNC3(size, GFP_KERNEL);
	p_info->mfw_mb_shadow = FUNC3(size, GFP_KERNEL);
	if (!p_info->mfw_mb_cur || !p_info->mfw_mb_shadow)
		goto err;

	return 0;

err:
	FUNC5(p_hwfn);
	return -ENOMEM;
}