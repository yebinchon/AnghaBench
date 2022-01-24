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
struct brcmf_pciedev_info {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_CORE_PCIE2 ; 
 int /*<<< orphan*/  BRCMF_PCIE_PCIE2REG_CONFIGADDR ; 
 int /*<<< orphan*/  BRCMF_PCIE_PCIE2REG_CONFIGDATA ; 
 int FUNC0 (struct brcmf_pciedev_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_pciedev_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_pciedev_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct brcmf_pciedev_info *devinfo)
{
	u32 config;

	/* BAR1 window may not be sized properly */
	FUNC1(devinfo, BCMA_CORE_PCIE2);
	FUNC2(devinfo, BRCMF_PCIE_PCIE2REG_CONFIGADDR, 0x4e0);
	config = FUNC0(devinfo, BRCMF_PCIE_PCIE2REG_CONFIGDATA);
	FUNC2(devinfo, BRCMF_PCIE_PCIE2REG_CONFIGDATA, config);

	FUNC3(&devinfo->pdev->dev);
}