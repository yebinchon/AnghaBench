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
struct alcor_sdmmc_host {int irq_status_sd; struct alcor_pci_priv* alcor_pci; } ;
struct alcor_pci_priv {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int AU6601_INT_CMD_END ; 
 int AU6601_INT_DATA_END ; 
 int AU6601_INT_DMA_END ; 
 int AU6601_INT_READ_BUF_RDY ; 
 int AU6601_INT_WRITE_BUF_RDY ; 
 int /*<<< orphan*/  AU6601_REG_INT_STATUS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 int FUNC0 (struct alcor_sdmmc_host*,int) ; 
 int FUNC1 (struct alcor_sdmmc_host*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct alcor_sdmmc_host*) ; 
 int FUNC3 (struct alcor_pci_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct alcor_pci_priv*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *d)
{
	struct alcor_sdmmc_host *host = d;
	struct alcor_pci_priv *priv = host->alcor_pci;
	u32 status, tmp;
	irqreturn_t ret;
	int cmd_done, data_done;

	status = FUNC3(priv, AU6601_REG_INT_STATUS);
	if (!status)
		return IRQ_NONE;

	FUNC4(priv, status, AU6601_REG_INT_STATUS);

	tmp = status & (AU6601_INT_READ_BUF_RDY | AU6601_INT_WRITE_BUF_RDY
			| AU6601_INT_DATA_END | AU6601_INT_DMA_END
			| AU6601_INT_CMD_END);
	if (tmp == status) {
		cmd_done = FUNC0(host, tmp);
		data_done = FUNC1(host, tmp);
		/* use fast path for simple tasks */
		if (cmd_done && data_done) {
			ret = IRQ_HANDLED;
			goto alcor_irq_done;
		}
	}

	host->irq_status_sd = status;
	ret = IRQ_WAKE_THREAD;
	FUNC2(host);
alcor_irq_done:
	return ret;
}