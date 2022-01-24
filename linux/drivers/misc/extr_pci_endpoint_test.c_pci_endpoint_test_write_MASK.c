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
struct pci_endpoint_test {size_t alignment; int /*<<< orphan*/  irq_raised; struct pci_dev* pdev; } ;
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;
typedef  size_t dma_addr_t ;

/* Variables and functions */
 int COMMAND_READ ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQ_TYPE_LEGACY ; 
 int IRQ_TYPE_MSIX ; 
 int /*<<< orphan*/  FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  PCI_ENDPOINT_TEST_CHECKSUM ; 
 int /*<<< orphan*/  PCI_ENDPOINT_TEST_COMMAND ; 
 int /*<<< orphan*/  PCI_ENDPOINT_TEST_IRQ_NUMBER ; 
 int /*<<< orphan*/  PCI_ENDPOINT_TEST_IRQ_TYPE ; 
 int /*<<< orphan*/  PCI_ENDPOINT_TEST_LOWER_SRC_ADDR ; 
 int /*<<< orphan*/  PCI_ENDPOINT_TEST_SIZE ; 
 int /*<<< orphan*/  PCI_ENDPOINT_TEST_STATUS ; 
 int /*<<< orphan*/  PCI_ENDPOINT_TEST_UPPER_SRC_ADDR ; 
 size_t FUNC1 (size_t,size_t) ; 
 size_t SIZE_MAX ; 
 int STATUS_READ_SUCCESS ; 
 int FUNC2 (int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 void* FUNC4 (struct device*,size_t,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,size_t,void*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (void*,size_t) ; 
 int irq_type ; 
 int FUNC7 (size_t) ; 
 int FUNC8 (struct pci_endpoint_test*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_endpoint_test*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC12(struct pci_endpoint_test *test, size_t size)
{
	bool ret = false;
	u32 reg;
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
		FUNC3(dev, "Failed to allocate address\n");
		ret = false;
		goto err;
	}

	if (alignment && !FUNC0(orig_phys_addr, alignment)) {
		phys_addr =  FUNC1(orig_phys_addr, alignment);
		offset = phys_addr - orig_phys_addr;
		addr = orig_addr + offset;
	} else {
		phys_addr = orig_phys_addr;
		addr = orig_addr;
	}

	FUNC6(addr, size);

	crc32 = FUNC2(~0, addr, size);
	FUNC9(test, PCI_ENDPOINT_TEST_CHECKSUM,
				 crc32);

	FUNC9(test, PCI_ENDPOINT_TEST_LOWER_SRC_ADDR,
				 FUNC7(phys_addr));
	FUNC9(test, PCI_ENDPOINT_TEST_UPPER_SRC_ADDR,
				 FUNC10(phys_addr));

	FUNC9(test, PCI_ENDPOINT_TEST_SIZE, size);

	FUNC9(test, PCI_ENDPOINT_TEST_IRQ_TYPE, irq_type);
	FUNC9(test, PCI_ENDPOINT_TEST_IRQ_NUMBER, 1);
	FUNC9(test, PCI_ENDPOINT_TEST_COMMAND,
				 COMMAND_READ);

	FUNC11(&test->irq_raised);

	reg = FUNC8(test, PCI_ENDPOINT_TEST_STATUS);
	if (reg & STATUS_READ_SUCCESS)
		ret = true;

	FUNC5(dev, size + alignment, orig_addr, orig_phys_addr);

err:
	return ret;
}