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
typedef  scalar_t__ u16 ;
struct be_vf_cfg {int if_handle; int privileges; } ;
struct be_adapter {TYPE_1__* pdev; struct be_vf_cfg* vf_cfg; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BE_NUM_VLANS_SUPPORTED ; 
 int BE_PRIV_FILTMGMT ; 
 int FUNC0 (struct be_adapter*,int,int) ; 
 int FUNC1 (struct be_adapter*,scalar_t__,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct be_adapter*,int,scalar_t__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC4(struct be_adapter *adapter, int vf, u16 vlan)
{
	struct be_vf_cfg *vf_cfg = &adapter->vf_cfg[vf];
	u16 vids[BE_NUM_VLANS_SUPPORTED];
	int vf_if_id = vf_cfg->if_handle;
	int status;

	/* Enable Transparent VLAN Tagging */
	status = FUNC1(adapter, vlan, vf + 1, vf_if_id, 0, 0);
	if (status)
		return status;

	/* Clear pre-programmed VLAN filters on VF if any, if TVT is enabled */
	vids[0] = 0;
	status = FUNC2(adapter, vf_if_id, vids, 1, vf + 1);
	if (!status)
		FUNC3(&adapter->pdev->dev,
			 "Cleared guest VLANs on VF%d", vf);

	/* After TVT is enabled, disallow VFs to program VLAN filters */
	if (vf_cfg->privileges & BE_PRIV_FILTMGMT) {
		status = FUNC0(adapter, vf_cfg->privileges &
						  ~BE_PRIV_FILTMGMT, vf + 1);
		if (!status)
			vf_cfg->privileges &= ~BE_PRIV_FILTMGMT;
	}
	return 0;
}