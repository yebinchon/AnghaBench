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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct ocxl_fn_config {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct pci_dev*,struct ocxl_fn_config*) ; 
 int FUNC2 (struct pci_dev*,struct ocxl_fn_config*) ; 
 int FUNC3 (struct pci_dev*,struct ocxl_fn_config*) ; 
 int FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,struct ocxl_fn_config*) ; 
 int FUNC6 (struct pci_dev*,struct ocxl_fn_config*) ; 

int FUNC7(struct pci_dev *dev, struct ocxl_fn_config *fn)
{
	int rc;

	FUNC5(dev, fn);

	rc = FUNC3(dev, fn);
	if (rc) {
		FUNC0(&dev->dev,
			"Invalid Transaction Layer DVSEC configuration: %d\n",
			rc);
		return -ENODEV;
	}

	rc = FUNC2(dev, fn);
	if (rc) {
		FUNC0(&dev->dev,
			"Invalid Function DVSEC configuration: %d\n", rc);
		return -ENODEV;
	}

	rc = FUNC1(dev, fn);
	if (rc) {
		FUNC0(&dev->dev, "Invalid AFU configuration: %d\n", rc);
		return -ENODEV;
	}

	rc = FUNC4(dev);
	if (rc) {
		FUNC0(&dev->dev,
			"Invalid vendor specific DVSEC configuration: %d\n",
			rc);
		return -ENODEV;
	}

	rc = FUNC6(dev, fn);
	return rc;
}