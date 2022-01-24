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
struct brcmf_pciedev_info {int in_irq; scalar_t__ state; TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ BRCMFMAC_PCIE_STATE_UP ; 
 int BRCMF_PCIE_MB_INT_D2H_DB ; 
 int BRCMF_PCIE_MB_INT_FN0_0 ; 
 int BRCMF_PCIE_MB_INT_FN0_1 ; 
 int /*<<< orphan*/  BRCMF_PCIE_PCIE2REG_MAILBOXINT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  PCIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_pciedev_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_pciedev_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct brcmf_pciedev_info*) ; 
 int FUNC4 (struct brcmf_pciedev_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct brcmf_pciedev_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *arg)
{
	struct brcmf_pciedev_info *devinfo = (struct brcmf_pciedev_info *)arg;
	u32 status;

	devinfo->in_irq = true;
	status = FUNC4(devinfo, BRCMF_PCIE_PCIE2REG_MAILBOXINT);
	FUNC0(PCIE, "Enter %x\n", status);
	if (status) {
		FUNC5(devinfo, BRCMF_PCIE_PCIE2REG_MAILBOXINT,
				       status);
		if (status & (BRCMF_PCIE_MB_INT_FN0_0 |
			      BRCMF_PCIE_MB_INT_FN0_1))
			FUNC2(devinfo);
		if (status & BRCMF_PCIE_MB_INT_D2H_DB) {
			if (devinfo->state == BRCMFMAC_PCIE_STATE_UP)
				FUNC6(
							&devinfo->pdev->dev);
		}
	}
	FUNC1(devinfo, false);
	if (devinfo->state == BRCMFMAC_PCIE_STATE_UP)
		FUNC3(devinfo);
	devinfo->in_irq = false;
	return IRQ_HANDLED;
}