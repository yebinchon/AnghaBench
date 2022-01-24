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
struct brcmf_pciedev_info {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_PCIE_PCIE2REG_MAILBOXINT ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 int /*<<< orphan*/  PCIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_pciedev_info*) ; 
 scalar_t__ FUNC2 (struct brcmf_pciedev_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *arg)
{
	struct brcmf_pciedev_info *devinfo = (struct brcmf_pciedev_info *)arg;

	if (FUNC2(devinfo, BRCMF_PCIE_PCIE2REG_MAILBOXINT)) {
		FUNC1(devinfo);
		FUNC0(PCIE, "Enter\n");
		return IRQ_WAKE_THREAD;
	}
	return IRQ_NONE;
}