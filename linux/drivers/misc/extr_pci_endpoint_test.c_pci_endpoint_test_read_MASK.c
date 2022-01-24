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
struct pci_endpoint_test {size_t alignment; int /*<<< orphan*/  irq_raised; struct pci_dev* pdev; } ;
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;
typedef  size_t dma_addr_t ;

/* Variables and functions */
 int COMMAND_WRITE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQ_TYPE_LEGACY ; 
 int IRQ_TYPE_MSIX ; 
 int /*<<< orphan*/  FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  PCI_ENDPOINT_TEST_CHECKSUM ; 
 int /*<<< orphan*/  PCI_ENDPOINT_TEST_COMMAND ; 
 int /*<<< orphan*/  PCI_ENDPOINT_TEST_IRQ_NUMBER ; 
 int /*<<< orphan*/  PCI_ENDPOINT_TEST_IRQ_TYPE ; 
 int /*<<< orphan*/  PCI_ENDPOINT_TEST_LOWER_DST_ADDR ; 
 int /*<<< orphan*/  PCI_ENDPOINT_TEST_SIZE ; 
 int /*<<< orphan*/  PCI_ENDPOINT_TEST_UPPER_DST_ADDR ; 
 size_t FUNC1 (size_t,size_t) ; 
 size_t SIZE_MAX ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 void* FUNC4 (struct device*,size_t,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,size_t,void*,size_t) ; 
 int irq_type ; 
 int FUNC6 (size_t) ; 
 scalar_t__ FUNC7 (struct pci_endpoint_test*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_endpoint_test*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC11(struct pci_endpoint_test *test, size_t size)
{
	bool ret = false;
	void *addr;
	dma_addr_t phys_addr;
	struct pci_dev *pdev = test->pdev;
	struct device *dev = &pdev->dev;
	void *orig_addr;
	dma_addr_t orig_phys_addr;
	size_t offset;
	size_t alignment = test->alignment;
	u32 crc32;

	if (size > SIZE_MAX - alignment)
		goto err;

	if (irq_type < IRQ_TYPE_LEGACY || irq_type > IRQ_TYPE_MSIX) {
		FUNC3(dev, "Invalid IRQ type option\n");
		goto err;
	}

	orig_addr = FUNC4(dev, size + alignment, &orig_phys_addr,
				       GFP_KERNEL);
	if (!orig_addr) {
		FUNC3(dev, "Failed to allocate destination address\n");
		ret = false;
		goto err;
	}

	if (alignment && !FUNC0(orig_phys_addr, alignment)) {
		phys_addr = FUNC1(orig_phys_addr, alignment);
		offset = phys_addr - orig_phys_addr;
		addr = orig_addr + offset;
	} else {
		phys_addr = orig_phys_addr;
		addr = orig_addr;
	}

	FUNC8(test, PCI_ENDPOINT_TEST_LOWER_DST_ADDR,
				 FUNC6(phys_addr));
	FUNC8(test, PCI_ENDPOINT_TEST_UPPER_DST_ADDR,
				 FUNC9(phys_addr));

	FUNC8(test, PCI_ENDPOINT_TEST_SIZE, size);

	FUNC8(test, PCI_ENDPOINT_TEST_IRQ_TYPE, irq_type);
	FUNC8(test, PCI_ENDPOINT_TEST_IRQ_NUMBER, 1);
	FUNC8(test, PCI_ENDPOINT_TEST_COMMAND,
				 COMMAND_WRITE);

	FUNC10(&test->irq_raised);

	crc32 = FUNC2(~0, addr, size);
	if (crc32 == FUNC7(test, PCI_ENDPOINT_TEST_CHECKSUM))
		ret = true;

	FUNC5(dev, size + alignment, orig_addr, orig_phys_addr);
err:
	return ret;
}