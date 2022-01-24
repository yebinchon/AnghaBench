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
struct qlcnic_trans_list {int count; int /*<<< orphan*/  wait_list; } ;
struct qlcnic_vf_info {struct qlcnic_trans_list rcv_act; } ;
struct qlcnic_sriov {int dummy; } ;
struct qlcnic_bc_trans {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qlcnic_sriov_process_bc_cmd ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_sriov*,struct qlcnic_vf_info*,int /*<<< orphan*/ ) ; 

int FUNC2(struct qlcnic_sriov *sriov,
				struct qlcnic_vf_info *vf,
				struct qlcnic_bc_trans *trans)
{
	struct qlcnic_trans_list *t_list = &vf->rcv_act;

	t_list->count++;
	FUNC0(&trans->list, &t_list->wait_list);
	if (t_list->count == 1)
		FUNC1(sriov, vf,
					     qlcnic_sriov_process_bc_cmd);
	return 0;
}