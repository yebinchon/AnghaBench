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
typedef  int /*<<< orphan*/  u16 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {scalar_t__ mcp_info; } ;
struct qed_eth_stats {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,struct qed_ptt*,struct qed_eth_stats*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,struct qed_ptt*,struct qed_eth_stats*) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,struct qed_ptt*,struct qed_eth_stats*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*,struct qed_ptt*,struct qed_eth_stats*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_hwfn*,struct qed_ptt*,struct qed_eth_stats*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct qed_hwfn *p_hwfn,
				  struct qed_ptt *p_ptt,
				  struct qed_eth_stats *stats,
				  u16 statistics_bin, bool b_get_port_stats)
{
	FUNC0(p_hwfn, p_ptt, stats, statistics_bin);
	FUNC4(p_hwfn, p_ptt, stats, statistics_bin);
	FUNC3(p_hwfn, p_ptt, stats, statistics_bin);
	FUNC2(p_hwfn, p_ptt, stats, statistics_bin);

	if (b_get_port_stats && p_hwfn->mcp_info)
		FUNC1(p_hwfn, p_ptt, stats);
}