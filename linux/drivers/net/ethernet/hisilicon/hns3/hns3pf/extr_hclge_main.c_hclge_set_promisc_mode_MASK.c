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
struct hnae3_handle {int netdev_flags; TYPE_1__* pdev; } ;
struct hclge_vport {int /*<<< orphan*/  vport_id; struct hclge_dev* back; } ;
struct hclge_promisc_param {int dummy; } ;
struct hclge_dev {int dummy; } ;
struct TYPE_2__ {int revision; } ;

/* Variables and functions */
 int HNAE3_BPE ; 
 int FUNC0 (struct hclge_dev*,struct hclge_promisc_param*) ; 
 struct hclge_vport* FUNC1 (struct hnae3_handle*) ; 
 int /*<<< orphan*/  FUNC2 (struct hclge_promisc_param*,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct hnae3_handle *handle, bool en_uc_pmc,
				  bool en_mc_pmc)
{
	struct hclge_vport *vport = FUNC1(handle);
	struct hclge_dev *hdev = vport->back;
	struct hclge_promisc_param param;
	bool en_bc_pmc = true;

	/* For revision 0x20, if broadcast promisc enabled, vlan filter is
	 * always bypassed. So broadcast promisc should be disabled until
	 * user enable promisc mode
	 */
	if (handle->pdev->revision == 0x20)
		en_bc_pmc = handle->netdev_flags & HNAE3_BPE ? true : false;

	FUNC2(&param, en_uc_pmc, en_mc_pmc, en_bc_pmc,
				 vport->vport_id);
	return FUNC0(hdev, &param);
}