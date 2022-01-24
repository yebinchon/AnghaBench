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
typedef  int u32 ;
struct sh_mmcif_host {int sd_error; int /*<<< orphan*/  dma_active; int /*<<< orphan*/  mrq; int /*<<< orphan*/  addr; scalar_t__ ccs_enable; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int INT_ALL ; 
 int INT_CCS ; 
 int INT_CMD12CRE ; 
 int INT_CMD12RBE ; 
 int INT_ERR_STS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 int MASK_CLEAN ; 
 int /*<<< orphan*/  MMCIF_CE_INT ; 
 int /*<<< orphan*/  MMCIF_CE_INT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_mmcif_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sh_mmcif_host*) ; 
 struct device* FUNC3 (struct sh_mmcif_host*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct sh_mmcif_host *host = dev_id;
	struct device *dev = FUNC3(host);
	u32 state, mask;

	state = FUNC4(host->addr, MMCIF_CE_INT);
	mask = FUNC4(host->addr, MMCIF_CE_INT_MASK);
	if (host->ccs_enable)
		FUNC5(host->addr, MMCIF_CE_INT, ~(state & mask));
	else
		FUNC5(host->addr, MMCIF_CE_INT, INT_CCS | ~(state & mask));
	FUNC1(host, MMCIF_CE_INT_MASK, state & MASK_CLEAN);

	if (state & ~MASK_CLEAN)
		FUNC0(dev, "IRQ state = 0x%08x incompletely cleared\n",
			state);

	if (state & INT_ERR_STS || state & ~INT_ALL) {
		host->sd_error = true;
		FUNC0(dev, "int err state = 0x%08x\n", state);
	}
	if (state & ~(INT_CMD12RBE | INT_CMD12CRE)) {
		if (!host->mrq)
			FUNC0(dev, "NULL IRQ state = 0x%08x\n", state);
		if (!host->dma_active)
			return IRQ_WAKE_THREAD;
		else if (host->sd_error)
			FUNC2(host);
	} else {
		FUNC0(dev, "Unexpected IRQ 0x%x\n", state);
	}

	return IRQ_HANDLED;
}