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
struct pci_endpoint_test {int /*<<< orphan*/  mutex; struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;
struct file {int /*<<< orphan*/  private_data; } ;
typedef  enum pci_barno { ____Placeholder_pci_barno } pci_barno ;

/* Variables and functions */
 int BAR_0 ; 
 int EINVAL ; 
#define  PCITEST_BAR 136 
#define  PCITEST_COPY 135 
#define  PCITEST_GET_IRQTYPE 134 
#define  PCITEST_LEGACY_IRQ 133 
#define  PCITEST_MSI 132 
#define  PCITEST_MSIX 131 
#define  PCITEST_READ 130 
#define  PCITEST_SET_IRQTYPE 129 
#define  PCITEST_WRITE 128 
 int irq_type ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct pci_endpoint_test*,int) ; 
 int FUNC4 (struct pci_endpoint_test*,unsigned long) ; 
 int FUNC5 (struct pci_endpoint_test*) ; 
 int FUNC6 (struct pci_endpoint_test*,unsigned long,int) ; 
 int FUNC7 (struct pci_endpoint_test*,unsigned long) ; 
 int FUNC8 (struct pci_endpoint_test*,unsigned long) ; 
 int FUNC9 (struct pci_endpoint_test*,unsigned long) ; 
 struct pci_endpoint_test* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static long FUNC11(struct file *file, unsigned int cmd,
				    unsigned long arg)
{
	int ret = -EINVAL;
	enum pci_barno bar;
	struct pci_endpoint_test *test = FUNC10(file->private_data);
	struct pci_dev *pdev = test->pdev;

	FUNC1(&test->mutex);
	switch (cmd) {
	case PCITEST_BAR:
		bar = arg;
		if (bar < 0 || bar > 5)
			goto ret;
		if (FUNC0(pdev) && bar == BAR_0)
			goto ret;
		ret = FUNC3(test, bar);
		break;
	case PCITEST_LEGACY_IRQ:
		ret = FUNC5(test);
		break;
	case PCITEST_MSI:
	case PCITEST_MSIX:
		ret = FUNC6(test, arg, cmd == PCITEST_MSIX);
		break;
	case PCITEST_WRITE:
		ret = FUNC9(test, arg);
		break;
	case PCITEST_READ:
		ret = FUNC7(test, arg);
		break;
	case PCITEST_COPY:
		ret = FUNC4(test, arg);
		break;
	case PCITEST_SET_IRQTYPE:
		ret = FUNC8(test, arg);
		break;
	case PCITEST_GET_IRQTYPE:
		ret = irq_type;
		break;
	}

ret:
	FUNC2(&test->mutex);
	return ret;
}