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
typedef  int /*<<< orphan*/  u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {TYPE_1__* mcp_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  port_addr; int /*<<< orphan*/  public_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  PUBLIC_PORT ; 
 int /*<<< orphan*/  QED_MSG_SP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ) ; 

void FUNC5(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
	u32 addr = FUNC3(p_hwfn->mcp_info->public_base,
					PUBLIC_PORT);
	u32 mfw_mb_offsize = FUNC4(p_hwfn, p_ptt, addr);

	p_hwfn->mcp_info->port_addr = FUNC2(mfw_mb_offsize,
						   FUNC1(p_hwfn));
	FUNC0(p_hwfn, QED_MSG_SP,
		   "port_addr = 0x%x, port_id 0x%02x\n",
		   p_hwfn->mcp_info->port_addr, FUNC1(p_hwfn));
}