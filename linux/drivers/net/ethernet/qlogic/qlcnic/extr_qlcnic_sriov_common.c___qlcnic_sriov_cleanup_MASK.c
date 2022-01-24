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
struct qlcnic_back_channel {int /*<<< orphan*/  bc_trans_wq; int /*<<< orphan*/  bc_async_wq; } ;
struct qlcnic_vf_info {int num_vfs; struct qlcnic_vf_info* vf_info; struct qlcnic_vf_info* vp; int /*<<< orphan*/  rcv_act; int /*<<< orphan*/  trans_work; int /*<<< orphan*/  rcv_pend; struct qlcnic_back_channel bc; } ;
struct qlcnic_sriov {int num_vfs; struct qlcnic_sriov* vf_info; struct qlcnic_sriov* vp; int /*<<< orphan*/  rcv_act; int /*<<< orphan*/  trans_work; int /*<<< orphan*/  rcv_pend; struct qlcnic_back_channel bc; } ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct TYPE_2__ {struct qlcnic_vf_info* sriov; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_vf_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_back_channel*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct qlcnic_adapter*) ; 

void FUNC6(struct qlcnic_adapter *adapter)
{
	struct qlcnic_sriov *sriov = adapter->ahw->sriov;
	struct qlcnic_back_channel *bc = &sriov->bc;
	struct qlcnic_vf_info *vf;
	int i;

	if (!FUNC5(adapter))
		return;

	FUNC3(bc);
	FUNC1(bc->bc_async_wq);

	for (i = 0; i < sriov->num_vfs; i++) {
		vf = &sriov->vf_info[i];
		FUNC4(&vf->rcv_pend);
		FUNC0(&vf->trans_work);
		FUNC4(&vf->rcv_act);
	}

	FUNC1(bc->bc_trans_wq);

	for (i = 0; i < sriov->num_vfs; i++)
		FUNC2(sriov->vf_info[i].vp);

	FUNC2(sriov->vf_info);
	FUNC2(adapter->ahw->sriov);
}