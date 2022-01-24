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
 int FUNC0 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*) ; 
 int FUNC2 (struct qed_hwfn*) ; 
 int FUNC3 (struct qed_hwfn*) ; 

int FUNC4(struct qed_hwfn *p_hwfn)
{
	int rc;

	/* Allocate the ILT shadow table */
	rc = FUNC3(p_hwfn);
	if (rc)
		goto tables_alloc_fail;

	/* Allocate the T2  table */
	rc = FUNC2(p_hwfn);
	if (rc)
		goto tables_alloc_fail;

	/* Allocate and initialize the acquired cids bitmaps */
	rc = FUNC0(p_hwfn);
	if (rc)
		goto tables_alloc_fail;

	return 0;

tables_alloc_fail:
	FUNC1(p_hwfn);
	return rc;
}