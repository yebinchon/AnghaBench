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
struct qed_hwfn {scalar_t__ db_bar_no_edpm; } ;
struct qed_dev_rdma_info {int user_dpm_enabled; int /*<<< orphan*/  common; int /*<<< orphan*/  rdma_type; } ;
struct qed_dev {int dummy; } ;

/* Variables and functions */
 struct qed_hwfn* FUNC0 (struct qed_dev*) ; 
 scalar_t__ FUNC1 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  QED_RDMA_TYPE_IWARP ; 
 int /*<<< orphan*/  QED_RDMA_TYPE_ROCE ; 
 int /*<<< orphan*/  FUNC2 (struct qed_dev_rdma_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct qed_dev *cdev,
				  struct qed_dev_rdma_info *info)
{
	struct qed_hwfn *p_hwfn = FUNC0(cdev);

	FUNC2(info, 0, sizeof(*info));

	info->rdma_type = FUNC1(p_hwfn) ?
	    QED_RDMA_TYPE_ROCE : QED_RDMA_TYPE_IWARP;

	info->user_dpm_enabled = (p_hwfn->db_bar_no_edpm == 0);

	FUNC3(cdev, &info->common);

	return 0;
}