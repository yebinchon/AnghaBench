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
struct ddb {int msi; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTERRUPT_ENABLE ; 
 int IRQF_SHARED ; 
 int /*<<< orphan*/  MSI1_ENABLE ; 
 int /*<<< orphan*/  MSI2_ENABLE ; 
 int /*<<< orphan*/  MSI3_ENABLE ; 
 int /*<<< orphan*/  MSI4_ENABLE ; 
 int /*<<< orphan*/  MSI5_ENABLE ; 
 int /*<<< orphan*/  MSI6_ENABLE ; 
 int /*<<< orphan*/  MSI7_ENABLE ; 
 int /*<<< orphan*/  ddb_irq_handler ; 
 int /*<<< orphan*/  ddb_irq_handler0 ; 
 int /*<<< orphan*/  ddb_irq_handler1 ; 
 int /*<<< orphan*/  FUNC0 (struct ddb*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ddb*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ddb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,void*) ; 

__attribute__((used)) static int FUNC5(struct ddb *dev)
{
	int stat;
	int irq_flag = IRQF_SHARED;

	FUNC1(dev, 0x00000000, INTERRUPT_ENABLE);
	FUNC1(dev, 0x00000000, MSI1_ENABLE);
	FUNC1(dev, 0x00000000, MSI2_ENABLE);
	FUNC1(dev, 0x00000000, MSI3_ENABLE);
	FUNC1(dev, 0x00000000, MSI4_ENABLE);
	FUNC1(dev, 0x00000000, MSI5_ENABLE);
	FUNC1(dev, 0x00000000, MSI6_ENABLE);
	FUNC1(dev, 0x00000000, MSI7_ENABLE);

#ifdef CONFIG_PCI_MSI
	ddb_irq_msi(dev, 2);

	if (dev->msi)
		irq_flag = 0;
	if (dev->msi == 2) {
		stat = request_irq(pci_irq_vector(dev->pdev, 0),
				   ddb_irq_handler0, irq_flag, "ddbridge",
				   (void *)dev);
		if (stat < 0)
			return stat;
		stat = request_irq(pci_irq_vector(dev->pdev, 1),
				   ddb_irq_handler1, irq_flag, "ddbridge",
				   (void *)dev);
		if (stat < 0) {
			free_irq(pci_irq_vector(dev->pdev, 0), dev);
			return stat;
		}
	} else
#endif
	{
		stat = FUNC4(FUNC3(dev->pdev, 0),
				   ddb_irq_handler, irq_flag, "ddbridge",
				   (void *)dev);
		if (stat < 0)
			return stat;
	}
	if (dev->msi == 2) {
		FUNC1(dev, 0x0fffff00, INTERRUPT_ENABLE);
		FUNC1(dev, 0x0000000f, MSI1_ENABLE);
	} else {
		FUNC1(dev, 0x0fffff0f, INTERRUPT_ENABLE);
		FUNC1(dev, 0x00000000, MSI1_ENABLE);
	}
	return stat;
}