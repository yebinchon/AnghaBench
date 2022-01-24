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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct of_device_id {int /*<<< orphan*/  data; } ;
struct gpmi_nand_data {int /*<<< orphan*/ * dev; struct platform_device* pdev; int /*<<< orphan*/  devdata; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct gpmi_nand_data*,int) ; 
 int FUNC1 (struct gpmi_nand_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct gpmi_nand_data* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct gpmi_nand_data*) ; 
 int /*<<< orphan*/  gpmi_nand_id_table ; 
 int FUNC6 (struct gpmi_nand_data*) ; 
 struct of_device_id* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct gpmi_nand_data*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct gpmi_nand_data*) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct gpmi_nand_data *this;
	const struct of_device_id *of_id;
	int ret;

	this = FUNC4(&pdev->dev, sizeof(*this), GFP_KERNEL);
	if (!this)
		return -ENOMEM;

	of_id = FUNC7(gpmi_nand_id_table, &pdev->dev);
	if (of_id) {
		this->devdata = of_id->data;
	} else {
		FUNC2(&pdev->dev, "Failed to find the right device id.\n");
		return -ENODEV;
	}

	FUNC8(pdev, this);
	this->pdev  = pdev;
	this->dev   = &pdev->dev;

	ret = FUNC1(this);
	if (ret)
		goto exit_acquire_resources;

	ret = FUNC0(this, true);
	if (ret)
		goto exit_nfc_init;

	FUNC16(&pdev->dev, 500);
	FUNC17(&pdev->dev);
	FUNC15(&pdev->dev);
	FUNC10(&pdev->dev);
	FUNC11(&pdev->dev);

	ret = FUNC5(this);
	if (ret)
		goto exit_nfc_init;

	ret = FUNC6(this);
	if (ret)
		goto exit_nfc_init;

	FUNC12(&pdev->dev);
	FUNC14(&pdev->dev);

	FUNC3(this->dev, "driver registered.\n");

	return 0;

exit_nfc_init:
	FUNC13(&pdev->dev);
	FUNC9(&pdev->dev);
	FUNC18(this);
exit_acquire_resources:

	return ret;
}