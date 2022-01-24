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
struct qed_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PROTOCOLID_IWARP ; 
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*) ; 
 int FUNC1 (struct qed_hwfn*) ; 
 int FUNC2 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 

int FUNC4(struct qed_hwfn *p_hwfn)
{
	int rc;

	FUNC0(p_hwfn);
	rc = FUNC2(p_hwfn);
	if (rc)
		return rc;

	FUNC3(p_hwfn, PROTOCOLID_IWARP);

	return FUNC1(p_hwfn);
}