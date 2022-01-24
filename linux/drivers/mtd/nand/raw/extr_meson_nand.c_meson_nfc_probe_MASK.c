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
struct resource {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct meson_nfc {scalar_t__ reg_base; scalar_t__ reg_clk; struct device* dev; int /*<<< orphan*/  completion; int /*<<< orphan*/  chips; int /*<<< orphan*/  controller; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ NFC_REG_CFG ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 scalar_t__ FUNC6 (struct device*,struct resource*) ; 
 struct meson_nfc* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct meson_nfc*) ; 
 int FUNC9 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct meson_nfc*) ; 
 int /*<<< orphan*/  FUNC12 (struct meson_nfc*) ; 
 int /*<<< orphan*/  meson_nfc_irq ; 
 int FUNC13 (struct device*,struct meson_nfc*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 
 int FUNC16 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC17 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct platform_device*,struct meson_nfc*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct meson_nfc *nfc;
	struct resource *res;
	int ret, irq;

	nfc = FUNC7(dev, sizeof(*nfc), GFP_KERNEL);
	if (!nfc)
		return -ENOMEM;

	nfc->data = FUNC15(&pdev->dev);
	if (!nfc->data)
		return -ENODEV;

	FUNC14(&nfc->controller);
	FUNC1(&nfc->chips);
	FUNC10(&nfc->completion);

	nfc->dev = dev;

	res = FUNC17(pdev, IORESOURCE_MEM, 0);
	nfc->reg_base = FUNC6(dev, res);
	if (FUNC2(nfc->reg_base))
		return FUNC3(nfc->reg_base);

	nfc->reg_clk =
		FUNC19(dev->of_node,
						"amlogic,mmc-syscon");
	if (FUNC2(nfc->reg_clk)) {
		FUNC4(dev, "Failed to lookup clock base\n");
		return FUNC3(nfc->reg_clk);
	}

	irq = FUNC16(pdev, 0);
	if (irq < 0) {
		FUNC4(dev, "no NFC IRQ resource\n");
		return -EINVAL;
	}

	ret = FUNC11(nfc);
	if (ret) {
		FUNC4(dev, "failed to initialize NAND clock\n");
		return ret;
	}

	FUNC20(0, nfc->reg_base + NFC_REG_CFG);
	ret = FUNC8(dev, irq, meson_nfc_irq, 0, FUNC5(dev), nfc);
	if (ret) {
		FUNC4(dev, "failed to request NFC IRQ\n");
		ret = -EINVAL;
		goto err_clk;
	}

	ret = FUNC9(dev, FUNC0(32));
	if (ret) {
		FUNC4(dev, "failed to set DMA mask\n");
		goto err_clk;
	}

	FUNC18(pdev, nfc);

	ret = FUNC13(dev, nfc);
	if (ret) {
		FUNC4(dev, "failed to init NAND chips\n");
		goto err_clk;
	}

	return 0;
err_clk:
	FUNC12(nfc);
	return ret;
}