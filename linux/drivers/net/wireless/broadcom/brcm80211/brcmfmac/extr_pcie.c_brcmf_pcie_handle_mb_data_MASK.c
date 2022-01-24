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
typedef  int u32 ;
struct brcmf_pcie_shared_info {int dtoh_mb_data_addr; } ;
struct brcmf_pciedev_info {int mbdata_completed; TYPE_1__* pdev; int /*<<< orphan*/  mbdata_resp_wait; struct brcmf_pcie_shared_info shared; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BRCMF_D2H_DEV_D3_ACK ; 
 int BRCMF_D2H_DEV_DS_ENTER_REQ ; 
 int BRCMF_D2H_DEV_DS_EXIT_NOTE ; 
 int BRCMF_D2H_DEV_FWHALT ; 
 int /*<<< orphan*/  BRCMF_H2D_HOST_DS_ACK ; 
 int /*<<< orphan*/  PCIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct brcmf_pciedev_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct brcmf_pciedev_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct brcmf_pciedev_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct brcmf_pciedev_info *devinfo)
{
	struct brcmf_pcie_shared_info *shared;
	u32 addr;
	u32 dtoh_mb_data;

	shared = &devinfo->shared;
	addr = shared->dtoh_mb_data_addr;
	dtoh_mb_data = FUNC2(devinfo, addr);

	if (!dtoh_mb_data)
		return;

	FUNC4(devinfo, addr, 0);

	FUNC0(PCIE, "D2H_MB_DATA: 0x%04x\n", dtoh_mb_data);
	if (dtoh_mb_data & BRCMF_D2H_DEV_DS_ENTER_REQ)  {
		FUNC0(PCIE, "D2H_MB_DATA: DEEP SLEEP REQ\n");
		FUNC3(devinfo, BRCMF_H2D_HOST_DS_ACK);
		FUNC0(PCIE, "D2H_MB_DATA: sent DEEP SLEEP ACK\n");
	}
	if (dtoh_mb_data & BRCMF_D2H_DEV_DS_EXIT_NOTE)
		FUNC0(PCIE, "D2H_MB_DATA: DEEP SLEEP EXIT\n");
	if (dtoh_mb_data & BRCMF_D2H_DEV_D3_ACK) {
		FUNC0(PCIE, "D2H_MB_DATA: D3 ACK\n");
		devinfo->mbdata_completed = true;
		FUNC5(&devinfo->mbdata_resp_wait);
	}
	if (dtoh_mb_data & BRCMF_D2H_DEV_FWHALT) {
		FUNC0(PCIE, "D2H_MB_DATA: FW HALT\n");
		FUNC1(&devinfo->pdev->dev);
	}
}