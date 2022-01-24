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
struct pci_device_id {int /*<<< orphan*/  driver_data; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct hnae3_ae_dev {int /*<<< orphan*/  reset_type; int /*<<< orphan*/  flag; struct pci_dev* pdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HNAE3_NONE_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct hnae3_ae_dev*) ; 
 struct hnae3_ae_dev* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hnae3_ae_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,struct hnae3_ae_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,struct hnae3_ae_dev*) ; 

__attribute__((used)) static int FUNC5(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	struct hnae3_ae_dev *ae_dev;
	int ret;

	ae_dev = FUNC1(&pdev->dev, sizeof(*ae_dev), GFP_KERNEL);
	if (!ae_dev) {
		ret = -ENOMEM;
		return ret;
	}

	ae_dev->pdev = pdev;
	ae_dev->flag = ent->driver_data;
	ae_dev->reset_type = HNAE3_NONE_RESET;
	FUNC3(pdev, ae_dev);
	FUNC4(pdev, ae_dev);

	ret = FUNC2(ae_dev);
	if (ret) {
		FUNC0(&pdev->dev, ae_dev);
		FUNC4(pdev, NULL);
	}

	return ret;
}