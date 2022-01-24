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
struct alcor_sdmmc_host {int irq_status_sd; int /*<<< orphan*/  cmd_mutex; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int AU6601_INT_ALL_MASK ; 
 int AU6601_INT_CARD_INSERT ; 
 int AU6601_INT_CARD_REMOVE ; 
 int AU6601_INT_CMD_MASK ; 
 int AU6601_INT_DATA_MASK ; 
 int AU6601_INT_ERROR_MASK ; 
 int AU6601_INT_OVER_CURRENT_ERR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct alcor_sdmmc_host*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct alcor_sdmmc_host*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct alcor_sdmmc_host*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct alcor_sdmmc_host*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct alcor_sdmmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *d)
{
	struct alcor_sdmmc_host *host = d;
	irqreturn_t ret = IRQ_HANDLED;
	u32 intmask, tmp;

	FUNC7(&host->cmd_mutex);

	intmask = host->irq_status_sd;

	/* some thing bad */
	if (FUNC9(!intmask || AU6601_INT_ALL_MASK == intmask)) {
		FUNC5(host->dev, "unexpected IRQ: 0x%04x\n", intmask);
		ret = IRQ_NONE;
		goto exit;
	}

	tmp = intmask & (AU6601_INT_CMD_MASK | AU6601_INT_DATA_MASK);
	if (tmp) {
		if (tmp & AU6601_INT_ERROR_MASK)
			FUNC3(host, tmp);
		else {
			FUNC1(host, tmp);
			FUNC2(host, tmp);
		}
		intmask &= ~(AU6601_INT_CMD_MASK | AU6601_INT_DATA_MASK);
	}

	if (intmask & (AU6601_INT_CARD_INSERT | AU6601_INT_CARD_REMOVE)) {
		FUNC0(host, intmask);
		intmask &= ~(AU6601_INT_CARD_INSERT | AU6601_INT_CARD_REMOVE);
	}

	if (intmask & AU6601_INT_OVER_CURRENT_ERR) {
		FUNC6(host->dev,
			 "warning: over current detected!\n");
		intmask &= ~AU6601_INT_OVER_CURRENT_ERR;
	}

	if (intmask)
		FUNC5(host->dev, "got not handled IRQ: 0x%04x\n", intmask);

exit:
	FUNC8(&host->cmd_mutex);
	FUNC4(host);
	return ret;
}