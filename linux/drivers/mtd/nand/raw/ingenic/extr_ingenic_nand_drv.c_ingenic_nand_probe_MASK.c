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
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct ingenic_nfc {unsigned int num_banks; scalar_t__ ecc; int /*<<< orphan*/  chips; int /*<<< orphan*/  controller; struct device* dev; int /*<<< orphan*/  soc_info; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  cs ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 struct ingenic_nfc* FUNC5 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int FUNC7 (struct ingenic_nfc*,struct platform_device*) ; 
 unsigned int FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct ingenic_nfc*) ; 
 int /*<<< orphan*/  FUNC12 (struct ingenic_nfc*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	unsigned int num_banks;
	struct ingenic_nfc *nfc;
	int ret;

	num_banks = FUNC8(dev);
	if (num_banks == 0) {
		FUNC3(dev, "no banks found\n");
		return -ENODEV;
	}

	nfc = FUNC5(dev, FUNC12(nfc, cs, num_banks), GFP_KERNEL);
	if (!nfc)
		return -ENOMEM;

	nfc->soc_info = FUNC4(dev);
	if (!nfc->soc_info)
		return -EINVAL;

	/*
	 * Check for ECC HW before we call nand_scan_ident, to prevent us from
	 * having to call it again if the ECC driver returns -EPROBE_DEFER.
	 */
	nfc->ecc = FUNC10(dev->of_node);
	if (FUNC1(nfc->ecc))
		return FUNC2(nfc->ecc);

	nfc->dev = dev;
	nfc->num_banks = num_banks;

	FUNC9(&nfc->controller);
	FUNC0(&nfc->chips);

	ret = FUNC7(nfc, pdev);
	if (ret) {
		if (nfc->ecc)
			FUNC6(nfc->ecc);
		return ret;
	}

	FUNC11(pdev, nfc);
	return 0;
}