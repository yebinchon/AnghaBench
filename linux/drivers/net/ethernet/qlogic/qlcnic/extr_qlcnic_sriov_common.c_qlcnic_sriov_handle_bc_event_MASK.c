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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct qlcnic_vf_info {int /*<<< orphan*/  ch_free_cmpl; int /*<<< orphan*/  pci_func; } ;
struct qlcnic_sriov {struct qlcnic_vf_info* vf_info; } ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct TYPE_2__ {struct qlcnic_sriov* sriov; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct qlcnic_sriov*,struct qlcnic_vf_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct qlcnic_sriov*,struct qlcnic_vf_info*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct qlcnic_adapter *adapter, u32 event)
{
	struct qlcnic_vf_info *vf;
	struct qlcnic_sriov *sriov;
	int index;
	u8 pci_func;

	sriov = adapter->ahw->sriov;
	pci_func = FUNC7(event);
	index = FUNC4(adapter, pci_func);

	if (index < 0)
		return;

	vf = &sriov->vf_info[index];
	vf->pci_func = pci_func;

	if (FUNC2(event))
		FUNC0(&vf->ch_free_cmpl);

	if (FUNC3(event)) {
		FUNC5(sriov, vf);
		return;
	}

	if (FUNC1(event))
		FUNC6(sriov, vf);
}