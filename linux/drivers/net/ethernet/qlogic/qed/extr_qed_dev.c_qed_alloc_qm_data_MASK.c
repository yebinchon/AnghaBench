#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct qed_qm_info {void* wfq_data; void* qm_port_params; void* qm_vport_params; void* qm_pq_params; } ;
struct qed_hwfn {TYPE_1__* cdev; struct qed_qm_info qm_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_ports_in_engine; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*) ; 
 int FUNC4 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC5 (struct qed_hwfn*) ; 

__attribute__((used)) static int FUNC6(struct qed_hwfn *p_hwfn)
{
	struct qed_qm_info *qm_info = &p_hwfn->qm_info;
	int rc;

	rc = FUNC4(p_hwfn);
	if (rc)
		goto alloc_err;

	qm_info->qm_pq_params = FUNC1(FUNC2(p_hwfn),
					sizeof(*qm_info->qm_pq_params),
					GFP_KERNEL);
	if (!qm_info->qm_pq_params)
		goto alloc_err;

	qm_info->qm_vport_params = FUNC1(FUNC3(p_hwfn),
					   sizeof(*qm_info->qm_vport_params),
					   GFP_KERNEL);
	if (!qm_info->qm_vport_params)
		goto alloc_err;

	qm_info->qm_port_params = FUNC1(p_hwfn->cdev->num_ports_in_engine,
					  sizeof(*qm_info->qm_port_params),
					  GFP_KERNEL);
	if (!qm_info->qm_port_params)
		goto alloc_err;

	qm_info->wfq_data = FUNC1(FUNC3(p_hwfn),
				    sizeof(*qm_info->wfq_data),
				    GFP_KERNEL);
	if (!qm_info->wfq_data)
		goto alloc_err;

	return 0;

alloc_err:
	FUNC0(p_hwfn, "Failed to allocate memory for QM params\n");
	FUNC5(p_hwfn);
	return -ENOMEM;
}