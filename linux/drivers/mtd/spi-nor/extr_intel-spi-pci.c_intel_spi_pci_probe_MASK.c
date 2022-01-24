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
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int /*<<< orphan*/ * resource; int /*<<< orphan*/  dev; } ;
struct intel_spi_boardinfo {int writeable; } ;
struct intel_spi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCR ; 
 int BCR_WPD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct intel_spi*) ; 
 int FUNC1 (struct intel_spi*) ; 
 struct intel_spi_boardinfo* FUNC2 (int /*<<< orphan*/ *,void*,int,int /*<<< orphan*/ ) ; 
 struct intel_spi* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct intel_spi_boardinfo*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,struct intel_spi*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC8(struct pci_dev *pdev,
			       const struct pci_device_id *id)
{
	struct intel_spi_boardinfo *info;
	struct intel_spi *ispi;
	u32 bcr;
	int ret;

	ret = FUNC7(pdev);
	if (ret)
		return ret;

	info = FUNC2(&pdev->dev, (void *)id->driver_data, sizeof(*info),
			    GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	/* Try to make the chip read/write */
	FUNC4(pdev, BCR, &bcr);
	if (!(bcr & BCR_WPD)) {
		bcr |= BCR_WPD;
		FUNC6(pdev, BCR, bcr);
		FUNC4(pdev, BCR, &bcr);
	}
	info->writeable = !!(bcr & BCR_WPD);

	ispi = FUNC3(&pdev->dev, &pdev->resource[0], info);
	if (FUNC0(ispi))
		return FUNC1(ispi);

	FUNC5(pdev, ispi);
	return 0;
}