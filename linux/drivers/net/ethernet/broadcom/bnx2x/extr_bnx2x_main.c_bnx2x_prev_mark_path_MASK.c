#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bnx2x_prev_path_list {int undi; int /*<<< orphan*/  list; scalar_t__ aer; int /*<<< orphan*/  path; int /*<<< orphan*/  slot; int /*<<< orphan*/  bus; } ;
struct bnx2x {TYPE_2__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  devfn; TYPE_1__* bus; } ;
struct TYPE_3__ {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 int FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NETIF_MSG_HW ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bnx2x_prev_list ; 
 struct bnx2x_prev_path_list* FUNC5 (struct bnx2x*) ; 
 int /*<<< orphan*/  bnx2x_prev_sem ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x_prev_path_list*) ; 
 struct bnx2x_prev_path_list* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct bnx2x *bp, bool after_undi)
{
	struct bnx2x_prev_path_list *tmp_list;
	int rc;

	rc = FUNC6(&bnx2x_prev_sem);
	if (rc) {
		FUNC0("Received %d when tried to take lock\n", rc);
		return rc;
	}

	/* Check whether the entry for this path already exists */
	tmp_list = FUNC5(bp);
	if (tmp_list) {
		if (!tmp_list->aer) {
			FUNC0("Re-Marking the path.\n");
		} else {
			FUNC3(NETIF_MSG_HW, "Removing AER indication from path %d\n",
			   FUNC1(bp));
			tmp_list->aer = 0;
		}
		FUNC10(&bnx2x_prev_sem);
		return 0;
	}
	FUNC10(&bnx2x_prev_sem);

	/* Create an entry for this path and add it */
	tmp_list = FUNC8(sizeof(struct bnx2x_prev_path_list), GFP_KERNEL);
	if (!tmp_list) {
		FUNC0("Failed to allocate 'bnx2x_prev_path_list'\n");
		return -ENOMEM;
	}

	tmp_list->bus = bp->pdev->bus->number;
	tmp_list->slot = FUNC4(bp->pdev->devfn);
	tmp_list->path = FUNC1(bp);
	tmp_list->aer = 0;
	tmp_list->undi = after_undi ? (1 << FUNC2(bp)) : 0;

	rc = FUNC6(&bnx2x_prev_sem);
	if (rc) {
		FUNC0("Received %d when tried to take lock\n", rc);
		FUNC7(tmp_list);
	} else {
		FUNC3(NETIF_MSG_HW, "Marked path [%d] - finished previous unload\n",
		   FUNC1(bp));
		FUNC9(&tmp_list->list, &bnx2x_prev_list);
		FUNC10(&bnx2x_prev_sem);
	}

	return rc;
}