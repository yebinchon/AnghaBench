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
struct qed_hwfn {TYPE_2__* mcp_info; } ;
struct qed_dev_fcoe_info {int /*<<< orphan*/  num_cqs; int /*<<< orphan*/  wwnn; int /*<<< orphan*/  wwpn; int /*<<< orphan*/  secondary_bdq_rq_addr; int /*<<< orphan*/  primary_dbq_rq_addr; int /*<<< orphan*/  common; } ;
struct qed_dev {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  wwn_node; int /*<<< orphan*/  wwn_port; } ;
struct TYPE_4__ {TYPE_1__ func_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  BDQ_ID_RQ ; 
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 
 struct qed_hwfn* FUNC1 (struct qed_dev*) ; 
 int /*<<< orphan*/  QED_FCOE_CQ ; 
 int /*<<< orphan*/  FUNC2 (struct qed_dev_fcoe_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct qed_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct qed_dev *cdev,
				  struct qed_dev_fcoe_info *info)
{
	struct qed_hwfn *hwfn = FUNC1(cdev);
	int rc;

	FUNC2(info, 0, sizeof(*info));
	rc = FUNC5(cdev, &info->common);

	info->primary_dbq_rq_addr =
	    FUNC3(hwfn, BDQ_ID_RQ);
	info->secondary_bdq_rq_addr =
	    FUNC4(hwfn, BDQ_ID_RQ);

	info->wwpn = hwfn->mcp_info->func_info.wwn_port;
	info->wwnn = hwfn->mcp_info->func_info.wwn_node;

	info->num_cqs = FUNC0(hwfn, QED_FCOE_CQ);

	return rc;
}