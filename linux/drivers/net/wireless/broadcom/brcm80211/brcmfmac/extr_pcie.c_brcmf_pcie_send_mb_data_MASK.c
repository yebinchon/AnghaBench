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
typedef  scalar_t__ u32 ;
struct brcmf_pcie_shared_info {scalar_t__ htod_mb_data_addr; } ;
struct brcmf_pciedev_info {int /*<<< orphan*/  pdev; int /*<<< orphan*/  ci; struct brcmf_pcie_shared_info shared; } ;
struct brcmf_core {int rev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_CORE_PCIE2 ; 
 int /*<<< orphan*/  BRCMF_PCIE_REG_SBMBX ; 
 int EIO ; 
 int /*<<< orphan*/  PCIE ; 
 struct brcmf_core* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct brcmf_pciedev_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct brcmf_pciedev_info*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(struct brcmf_pciedev_info *devinfo, u32 htod_mb_data)
{
	struct brcmf_pcie_shared_info *shared;
	struct brcmf_core *core;
	u32 addr;
	u32 cur_htod_mb_data;
	u32 i;

	shared = &devinfo->shared;
	addr = shared->htod_mb_data_addr;
	cur_htod_mb_data = FUNC2(devinfo, addr);

	if (cur_htod_mb_data != 0)
		FUNC1(PCIE, "MB transaction is already pending 0x%04x\n",
			  cur_htod_mb_data);

	i = 0;
	while (cur_htod_mb_data != 0) {
		FUNC4(10);
		i++;
		if (i > 100)
			return -EIO;
		cur_htod_mb_data = FUNC2(devinfo, addr);
	}

	FUNC3(devinfo, addr, htod_mb_data);
	FUNC5(devinfo->pdev, BRCMF_PCIE_REG_SBMBX, 1);

	/* Send mailbox interrupt twice as a hardware workaround */
	core = FUNC0(devinfo->ci, BCMA_CORE_PCIE2);
	if (core->rev <= 13)
		FUNC5(devinfo->pdev, BRCMF_PCIE_REG_SBMBX, 1);

	return 0;
}