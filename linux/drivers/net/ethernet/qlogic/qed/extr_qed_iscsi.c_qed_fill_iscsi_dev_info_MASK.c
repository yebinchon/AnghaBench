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
struct qed_dev_iscsi_info {int /*<<< orphan*/  num_cqs; int /*<<< orphan*/  secondary_bdq_rq_addr; int /*<<< orphan*/  primary_dbq_rq_addr; int /*<<< orphan*/  common; } ;
struct qed_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BDQ_ID_RQ ; 
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 
 struct qed_hwfn* FUNC1 (struct qed_dev*) ; 
 int /*<<< orphan*/  QED_ISCSI_CQ ; 
 int /*<<< orphan*/  FUNC2 (struct qed_dev_iscsi_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct qed_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct qed_dev *cdev,
				   struct qed_dev_iscsi_info *info)
{
	struct qed_hwfn *hwfn = FUNC1(cdev);

	int rc;

	FUNC2(info, 0, sizeof(*info));
	rc = FUNC3(cdev, &info->common);

	info->primary_dbq_rq_addr =
	    FUNC4(hwfn, BDQ_ID_RQ);
	info->secondary_bdq_rq_addr =
	    FUNC5(hwfn, BDQ_ID_RQ);

	info->num_cqs = FUNC0(hwfn, QED_ISCSI_CQ);

	return rc;
}