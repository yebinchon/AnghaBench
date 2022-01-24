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
struct TYPE_2__ {scalar_t__ multi_tc_roce_en; } ;
struct qed_hwfn {TYPE_1__ hw_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,char*) ; 
 int EINVAL ; 
 scalar_t__ FUNC2 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  QED_PQ ; 
 int /*<<< orphan*/  QED_VPORT ; 
 scalar_t__ FUNC3 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct qed_hwfn*) ; 
 scalar_t__ FUNC5 (struct qed_hwfn*) ; 

__attribute__((used)) static int FUNC6(struct qed_hwfn *p_hwfn)
{
	if (FUNC5(p_hwfn) > FUNC3(p_hwfn, QED_VPORT)) {
		FUNC0(p_hwfn, "requested amount of vports exceeds resource\n");
		return -EINVAL;
	}

	if (FUNC4(p_hwfn) <= FUNC3(p_hwfn, QED_PQ))
		return 0;

	if (FUNC2(p_hwfn)) {
		p_hwfn->hw_info.multi_tc_roce_en = 0;
		FUNC1(p_hwfn,
			  "multi-tc roce was disabled to reduce requested amount of pqs\n");
		if (FUNC4(p_hwfn) <= FUNC3(p_hwfn, QED_PQ))
			return 0;
	}

	FUNC0(p_hwfn, "requested amount of pqs exceeds resource\n");
	return -EINVAL;
}