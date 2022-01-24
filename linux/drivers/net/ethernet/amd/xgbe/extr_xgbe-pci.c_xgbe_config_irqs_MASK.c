#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xgbe_prv_data {int isr_as_tasklet; int irq_count; int channel_irq_count; int /*<<< orphan*/ * channel_irq; int /*<<< orphan*/  dev; void* an_irq; void* i2c_irq; void* ecc_irq; void* dev_irq; TYPE_1__* pcidev; } ;
struct TYPE_3__ {scalar_t__ msi_enabled; } ;

/* Variables and functions */
 int PCI_IRQ_LEGACY ; 
 int PCI_IRQ_MSI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct xgbe_prv_data*) ; 
 int FUNC3 (TYPE_1__*,int,int,int) ; 
 void* FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct xgbe_prv_data*) ; 

__attribute__((used)) static int FUNC6(struct xgbe_prv_data *pdata)
{
	int ret;

	ret = FUNC5(pdata);
	if (!ret)
		goto out;

	ret = FUNC3(pdata->pcidev, 1, 1,
				    PCI_IRQ_LEGACY | PCI_IRQ_MSI);
	if (ret < 0) {
		FUNC1(pdata->dev, "single IRQ enablement failed\n");
		return ret;
	}

	pdata->isr_as_tasklet = pdata->pcidev->msi_enabled ? 1 : 0;
	pdata->irq_count = 1;
	pdata->channel_irq_count = 1;

	pdata->dev_irq = FUNC4(pdata->pcidev, 0);
	pdata->ecc_irq = FUNC4(pdata->pcidev, 0);
	pdata->i2c_irq = FUNC4(pdata->pcidev, 0);
	pdata->an_irq = FUNC4(pdata->pcidev, 0);

	if (FUNC2(pdata))
		FUNC0(pdata->dev, "single %s interrupt enabled\n",
			pdata->pcidev->msi_enabled ?  "MSI" : "legacy");

out:
	if (FUNC2(pdata)) {
		unsigned int i;

		FUNC0(pdata->dev, " dev irq=%d\n", pdata->dev_irq);
		FUNC0(pdata->dev, " ecc irq=%d\n", pdata->ecc_irq);
		FUNC0(pdata->dev, " i2c irq=%d\n", pdata->i2c_irq);
		FUNC0(pdata->dev, "  an irq=%d\n", pdata->an_irq);
		for (i = 0; i < pdata->channel_irq_count; i++)
			FUNC0(pdata->dev, " dma%u irq=%d\n",
				i, pdata->channel_irq[i]);
	}

	return 0;
}