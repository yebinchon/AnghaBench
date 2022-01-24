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
typedef  int /*<<< orphan*/  u64 ;
struct qede_dev {int /*<<< orphan*/  arfs; } ;
struct qede_arfs_fltr_node {int /*<<< orphan*/  rxq_id; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct qede_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct qede_dev*,struct qede_arfs_fltr_node*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct qede_dev*,struct qede_arfs_fltr_node*) ; 
 struct qede_arfs_fltr_node* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct qede_dev*,struct qede_arfs_fltr_node*) ; 

int FUNC7(struct qede_dev *edev, u64 cookie)
{
	struct qede_arfs_fltr_node *fltr = NULL;
	int rc = -EPERM;

	FUNC1(edev);
	if (!edev->arfs)
		goto unlock;

	fltr = FUNC5(FUNC0(edev, 0),
					 cookie);
	if (!fltr)
		goto unlock;

	FUNC3(edev, fltr, fltr->rxq_id, false);

	rc = FUNC6(edev, fltr);
	if (rc == 0)
		FUNC4(edev, fltr);

unlock:
	FUNC2(edev);
	return rc;
}