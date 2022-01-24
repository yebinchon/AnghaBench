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
struct qed_ll2_info {int dummy; } ;
struct qed_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_ll2_info*) ; 
 int FUNC1 (struct qed_hwfn*,struct qed_ll2_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,struct qed_ll2_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*,struct qed_ll2_info*) ; 

__attribute__((used)) static int FUNC4(struct qed_hwfn *p_hwfn, void *p_cookie)
{
	struct qed_ll2_info *p_ll2_conn = (struct qed_ll2_info *)p_cookie;
	int rc;

	if (!FUNC0(p_ll2_conn))
		return 0;

	rc = FUNC1(p_hwfn, p_ll2_conn);
	if (rc)
		return rc;

	FUNC2(p_hwfn, p_ll2_conn);
	FUNC3(p_hwfn, p_ll2_conn);

	return 0;
}