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
struct spa {int /*<<< orphan*/  irq_name; int /*<<< orphan*/  virq; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct ocxl_link {int /*<<< orphan*/  dev; int /*<<< orphan*/  bus; int /*<<< orphan*/  domain; struct spa* spa; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct pci_dev*,struct spa*) ; 
 int FUNC7 (struct pci_dev*,int*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocxl_link*) ; 
 int /*<<< orphan*/  FUNC9 (struct spa*) ; 
 int /*<<< orphan*/  xsl_fault_handler ; 

__attribute__((used)) static int FUNC10(struct pci_dev *dev, struct ocxl_link *link)
{
	struct spa *spa = link->spa;
	int rc;
	int hwirq;

	rc = FUNC7(dev, &hwirq);
	if (rc)
		return rc;

	rc = FUNC6(dev, spa);
	if (rc)
		return rc;

	spa->irq_name = FUNC4(GFP_KERNEL, "ocxl-xsl-%x-%x-%x",
				link->domain, link->bus, link->dev);
	if (!spa->irq_name) {
		FUNC1(&dev->dev, "Can't allocate name for xsl interrupt\n");
		rc = -ENOMEM;
		goto err_xsl;
	}
	/*
	 * At some point, we'll need to look into allowing a higher
	 * number of interrupts. Could we have an IRQ domain per link?
	 */
	spa->virq = FUNC2(NULL, hwirq);
	if (!spa->virq) {
		FUNC1(&dev->dev,
			"irq_create_mapping failed for translation interrupt\n");
		rc = -EINVAL;
		goto err_name;
	}

	FUNC0(&dev->dev, "hwirq %d mapped to virq %d\n", hwirq, spa->virq);

	rc = FUNC8(spa->virq, xsl_fault_handler, 0, spa->irq_name,
			link);
	if (rc) {
		FUNC1(&dev->dev,
			"request_irq failed for translation interrupt: %d\n",
			rc);
		rc = -EINVAL;
		goto err_mapping;
	}
	return 0;

err_mapping:
	FUNC3(spa->virq);
err_name:
	FUNC5(spa->irq_name);
err_xsl:
	FUNC9(spa);
	return rc;
}