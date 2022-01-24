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
struct bnx2x_prev_path_list {int aer; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct bnx2x*) ; 
 struct bnx2x_prev_path_list* FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  bnx2x_prev_sem ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct bnx2x *bp)
{
	struct bnx2x_prev_path_list *tmp_list;
	int rc;

	rc = FUNC3(&bnx2x_prev_sem);
	if (rc) {
		FUNC0("Received %d when tried to take lock\n", rc);
		return rc;
	}

	tmp_list = FUNC2(bp);
	if (tmp_list) {
		tmp_list->aer = 1;
		rc = 0;
	} else {
		FUNC0("path %d: Entry does not exist for eeh; Flow occurs before initial insmod is over ?\n",
			  FUNC1(bp));
	}

	FUNC4(&bnx2x_prev_sem);

	return rc;
}