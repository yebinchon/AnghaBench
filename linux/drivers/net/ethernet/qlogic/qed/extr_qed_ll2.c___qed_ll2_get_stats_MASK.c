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
typedef  size_t u8 ;
struct qed_ptt {int dummy; } ;
struct qed_ll2_stats {int dummy; } ;
struct TYPE_2__ {scalar_t__ gsi_enable; } ;
struct qed_ll2_info {scalar_t__ tx_stats_en; TYPE_1__ input; } ;
struct qed_hwfn {struct qed_ll2_info* p_ll2_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*) ; 
 int EINVAL ; 
 size_t QED_MAX_NUM_OF_LL2_CONNECTIONS ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,struct qed_ptt*,struct qed_ll2_stats*) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,struct qed_ptt*,struct qed_ll2_info*,struct qed_ll2_stats*) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*,struct qed_ptt*,struct qed_ll2_info*,struct qed_ll2_stats*) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_hwfn*,struct qed_ptt*,struct qed_ll2_info*,struct qed_ll2_stats*) ; 
 struct qed_ptt* FUNC5 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC6 (struct qed_hwfn*,struct qed_ptt*) ; 

__attribute__((used)) static int FUNC7(void *cxt, u8 connection_handle,
			       struct qed_ll2_stats *p_stats)
{
	struct qed_hwfn *p_hwfn = cxt;
	struct qed_ll2_info *p_ll2_conn = NULL;
	struct qed_ptt *p_ptt;

	if ((connection_handle >= QED_MAX_NUM_OF_LL2_CONNECTIONS) ||
	    !p_hwfn->p_ll2_info)
		return -EINVAL;

	p_ll2_conn = &p_hwfn->p_ll2_info[connection_handle];

	p_ptt = FUNC5(p_hwfn);
	if (!p_ptt) {
		FUNC0(p_hwfn, "Failed to acquire ptt\n");
		return -EINVAL;
	}

	if (p_ll2_conn->input.gsi_enable)
		FUNC1(p_hwfn, p_ptt, p_stats);

	FUNC3(p_hwfn, p_ptt, p_ll2_conn, p_stats);

	FUNC4(p_hwfn, p_ptt, p_ll2_conn, p_stats);

	if (p_ll2_conn->tx_stats_en)
		FUNC2(p_hwfn, p_ptt, p_ll2_conn, p_stats);

	FUNC6(p_hwfn, p_ptt);

	return 0;
}