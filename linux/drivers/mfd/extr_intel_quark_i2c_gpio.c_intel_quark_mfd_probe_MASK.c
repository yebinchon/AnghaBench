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
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct intel_quark_mfd {int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct intel_quark_mfd*) ; 
 struct intel_quark_mfd* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * intel_quark_mfd_cells ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC9(struct pci_dev *pdev,
				 const struct pci_device_id *id)
{
	struct intel_quark_mfd *quark_mfd;
	int ret;

	ret = FUNC8(pdev);
	if (ret)
		return ret;

	quark_mfd = FUNC2(&pdev->dev, sizeof(*quark_mfd), GFP_KERNEL);
	if (!quark_mfd)
		return -ENOMEM;

	quark_mfd->dev = &pdev->dev;
	FUNC1(&pdev->dev, quark_mfd);

	ret = FUNC5(&pdev->dev);
	if (ret)
		return ret;

	ret = FUNC4(pdev, &intel_quark_mfd_cells[1]);
	if (ret)
		goto err_unregister_i2c_clk;

	ret = FUNC3(pdev, &intel_quark_mfd_cells[0]);
	if (ret)
		goto err_unregister_i2c_clk;

	ret = FUNC7(&pdev->dev, 0, intel_quark_mfd_cells,
			      FUNC0(intel_quark_mfd_cells), NULL, 0,
			      NULL);
	if (ret)
		goto err_unregister_i2c_clk;

	return 0;

err_unregister_i2c_clk:
	FUNC6(&pdev->dev);
	return ret;
}