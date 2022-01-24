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
struct qed_hwfn {int /*<<< orphan*/  pf_iov_info; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  PROTOCOLID_COMMON ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 

void FUNC4(struct qed_hwfn *p_hwfn)
{
	FUNC3(p_hwfn, PROTOCOLID_COMMON);

	if (FUNC0(p_hwfn)) {
		FUNC2(p_hwfn);
		FUNC1(p_hwfn->pf_iov_info);
	}
}