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
struct bnx2x_exeq_elem {int /*<<< orphan*/  link; } ;
struct bnx2x_exe_queue_obj {int (* optimize ) (struct bnx2x*,int /*<<< orphan*/ ,struct bnx2x_exeq_elem*) ;int (* validate ) (struct bnx2x*,int /*<<< orphan*/ ,struct bnx2x_exeq_elem*) ;int /*<<< orphan*/  lock; int /*<<< orphan*/  exe_queue; int /*<<< orphan*/  owner; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_MSG_SP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,struct bnx2x_exeq_elem*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct bnx2x*,int /*<<< orphan*/ ,struct bnx2x_exeq_elem*) ; 
 int FUNC6 (struct bnx2x*,int /*<<< orphan*/ ,struct bnx2x_exeq_elem*) ; 

__attribute__((used)) static inline int FUNC7(struct bnx2x *bp,
				      struct bnx2x_exe_queue_obj *o,
				      struct bnx2x_exeq_elem *elem,
				      bool restore)
{
	int rc;

	FUNC3(&o->lock);

	if (!restore) {
		/* Try to cancel this element queue */
		rc = o->optimize(bp, o->owner, elem);
		if (rc)
			goto free_and_exit;

		/* Check if this request is ok */
		rc = o->validate(bp, o->owner, elem);
		if (rc) {
			FUNC0(BNX2X_MSG_SP, "Preamble failed: %d\n", rc);
			goto free_and_exit;
		}
	}

	/* If so, add it to the execution queue */
	FUNC2(&elem->link, &o->exe_queue);

	FUNC4(&o->lock);

	return 0;

free_and_exit:
	FUNC1(bp, elem);

	FUNC4(&o->lock);

	return rc;
}