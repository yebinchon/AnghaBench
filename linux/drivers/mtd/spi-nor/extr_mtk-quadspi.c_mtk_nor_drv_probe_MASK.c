#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mtk_nor {TYPE_1__* dev; void* nor_clk; void* spi_clk; void* base; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 void* FUNC3 (TYPE_1__*,char*) ; 
 void* FUNC4 (TYPE_1__*,struct resource*) ; 
 struct mtk_nor* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mtk_nor*) ; 
 int FUNC7 (struct mtk_nor*) ; 
 int FUNC8 (struct mtk_nor*,struct device_node*) ; 
 struct device_node* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct mtk_nor*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct device_node *flash_np;
	struct resource *res;
	int ret;
	struct mtk_nor *mtk_nor;

	if (!pdev->dev.of_node) {
		FUNC2(&pdev->dev, "No DT found\n");
		return -EINVAL;
	}

	mtk_nor = FUNC5(&pdev->dev, sizeof(*mtk_nor), GFP_KERNEL);
	if (!mtk_nor)
		return -ENOMEM;
	FUNC11(pdev, mtk_nor);

	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	mtk_nor->base = FUNC4(&pdev->dev, res);
	if (FUNC0(mtk_nor->base))
		return FUNC1(mtk_nor->base);

	mtk_nor->spi_clk = FUNC3(&pdev->dev, "spi");
	if (FUNC0(mtk_nor->spi_clk))
		return FUNC1(mtk_nor->spi_clk);

	mtk_nor->nor_clk = FUNC3(&pdev->dev, "sf");
	if (FUNC0(mtk_nor->nor_clk))
		return FUNC1(mtk_nor->nor_clk);

	mtk_nor->dev = &pdev->dev;

	ret = FUNC7(mtk_nor);
	if (ret)
		return ret;

	/* only support one attached flash */
	flash_np = FUNC9(pdev->dev.of_node, NULL);
	if (!flash_np) {
		FUNC2(&pdev->dev, "no SPI flash device to configure\n");
		ret = -ENODEV;
		goto nor_free;
	}
	ret = FUNC8(mtk_nor, flash_np);

nor_free:
	if (ret)
		FUNC6(mtk_nor);

	return ret;
}