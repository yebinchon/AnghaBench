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
struct xgbe_prv_data {int isr_as_tasklet; int irq_count; unsigned int channel_irq_count; int per_channel_irq; TYPE_1__* pcidev; int /*<<< orphan*/  dev; int /*<<< orphan*/  channel_irq_mode; void** channel_irq; void* an_irq; void* i2c_irq; void* ecc_irq; void* dev_irq; int /*<<< orphan*/  tx_ring_count; int /*<<< orphan*/  rx_ring_count; } ;
struct TYPE_3__ {scalar_t__ msix_enabled; } ;

/* Variables and functions */
 int PCI_IRQ_MSI ; 
 int PCI_IRQ_MSIX ; 
 int /*<<< orphan*/  XGBE_IRQ_MODE_LEVEL ; 
 unsigned int XGBE_MSI_BASE_COUNT ; 
 int /*<<< orphan*/  XGBE_MSI_MIN_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct xgbe_prv_data*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,unsigned int,int) ; 
 void* FUNC5 (TYPE_1__*,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct xgbe_prv_data *pdata)
{
	unsigned int vector_count;
	unsigned int i, j;
	int ret;

	vector_count = XGBE_MSI_BASE_COUNT;
	vector_count += FUNC2(pdata->rx_ring_count,
			    pdata->tx_ring_count);

	ret = FUNC4(pdata->pcidev, XGBE_MSI_MIN_COUNT,
				    vector_count, PCI_IRQ_MSI | PCI_IRQ_MSIX);
	if (ret < 0) {
		FUNC1(pdata->dev, "multi MSI/MSI-X enablement failed\n");
		return ret;
	}

	pdata->isr_as_tasklet = 1;
	pdata->irq_count = ret;

	pdata->dev_irq = FUNC5(pdata->pcidev, 0);
	pdata->ecc_irq = FUNC5(pdata->pcidev, 1);
	pdata->i2c_irq = FUNC5(pdata->pcidev, 2);
	pdata->an_irq = FUNC5(pdata->pcidev, 3);

	for (i = XGBE_MSI_BASE_COUNT, j = 0; i < ret; i++, j++)
		pdata->channel_irq[j] = FUNC5(pdata->pcidev, i);
	pdata->channel_irq_count = j;

	pdata->per_channel_irq = 1;
	pdata->channel_irq_mode = XGBE_IRQ_MODE_LEVEL;

	if (FUNC3(pdata))
		FUNC0(pdata->dev, "multi %s interrupts enabled\n",
			pdata->pcidev->msix_enabled ? "MSI-X" : "MSI");

	return 0;
}