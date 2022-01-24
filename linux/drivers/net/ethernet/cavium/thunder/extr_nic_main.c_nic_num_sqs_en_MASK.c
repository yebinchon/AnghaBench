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
typedef  scalar_t__ u16 ;
struct nicpf {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 scalar_t__ MAX_QUEUES_PER_QSET ; 
 int MAX_SQS_PER_VF ; 
 int MAX_SQS_PER_VF_SINGLE_NODE ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_SRIOV ; 
 scalar_t__ PCI_SRIOV_TOTAL_VF ; 
 int FUNC0 (scalar_t__,int) ; 
 int nr_node_ids ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 

__attribute__((used)) static int FUNC4(struct nicpf *nic, int vf_en)
{
	int pos, sqs_per_vf = MAX_SQS_PER_VF_SINGLE_NODE;
	u16 total_vf;

	/* Secondary Qsets are needed only if CPU count is
	 * morethan MAX_QUEUES_PER_QSET.
	 */
	if (FUNC1() <= MAX_QUEUES_PER_QSET)
		return 0;

	/* Check if its a multi-node environment */
	if (nr_node_ids > 1)
		sqs_per_vf = MAX_SQS_PER_VF;

	pos = FUNC2(nic->pdev, PCI_EXT_CAP_ID_SRIOV);
	FUNC3(nic->pdev, (pos + PCI_SRIOV_TOTAL_VF), &total_vf);
	return FUNC0(total_vf - vf_en, vf_en * sqs_per_vf);
}