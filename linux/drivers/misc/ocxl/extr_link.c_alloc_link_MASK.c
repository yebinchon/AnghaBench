#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int /*<<< orphan*/  devfn; TYPE_2__* bus; } ;
struct ocxl_link {int /*<<< orphan*/  platform_data; TYPE_1__* spa; int /*<<< orphan*/  irq_available; int /*<<< orphan*/  dev; int /*<<< orphan*/  bus; int /*<<< orphan*/  domain; int /*<<< orphan*/  ref; } ;
struct TYPE_4__ {int /*<<< orphan*/  number; } ;
struct TYPE_3__ {int /*<<< orphan*/  spa_mem; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX_IRQ_PER_LINK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pci_dev*,struct ocxl_link*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ocxl_link*) ; 
 int /*<<< orphan*/  FUNC4 (struct ocxl_link*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct ocxl_link* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int FUNC8 (struct pci_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ocxl_link*) ; 
 int FUNC10 (struct pci_dev*,struct ocxl_link*) ; 

__attribute__((used)) static int FUNC11(struct pci_dev *dev, int PE_mask, struct ocxl_link **out_link)
{
	struct ocxl_link *link;
	int rc;

	link = FUNC6(sizeof(struct ocxl_link), GFP_KERNEL);
	if (!link)
		return -ENOMEM;

	FUNC5(&link->ref);
	link->domain = FUNC7(dev->bus);
	link->bus = dev->bus->number;
	link->dev = FUNC0(dev->devfn);
	FUNC2(&link->irq_available, MAX_IRQ_PER_LINK);

	rc = FUNC1(dev, link);
	if (rc)
		goto err_free;

	rc = FUNC10(dev, link);
	if (rc)
		goto err_spa;

	/* platform specific hook */
	rc = FUNC8(dev, link->spa->spa_mem, PE_mask,
				&link->platform_data);
	if (rc)
		goto err_xsl_irq;

	*out_link = link;
	return 0;

err_xsl_irq:
	FUNC9(link);
err_spa:
	FUNC3(link);
err_free:
	FUNC4(link);
	return rc;
}