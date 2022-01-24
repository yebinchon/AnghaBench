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
struct TYPE_5__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct atmel_flexcom {scalar_t__ opmode; scalar_t__ clk; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ ATMEL_FLEXCOM_MODE_TWI ; 
 scalar_t__ ATMEL_FLEXCOM_MODE_USART ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FLEX_MR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_1__*,struct resource*) ; 
 struct atmel_flexcom* FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*) ; 
 int FUNC9 (struct device_node*,char*,scalar_t__*) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct atmel_flexcom*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct resource *res;
	struct atmel_flexcom *ddata;
	int err;

	ddata = FUNC7(&pdev->dev, sizeof(*ddata), GFP_KERNEL);
	if (!ddata)
		return -ENOMEM;

	FUNC11(pdev, ddata);

	err = FUNC9(np, "atmel,flexcom-mode", &ddata->opmode);
	if (err)
		return err;

	if (ddata->opmode < ATMEL_FLEXCOM_MODE_USART ||
	    ddata->opmode > ATMEL_FLEXCOM_MODE_TWI)
		return -EINVAL;

	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	ddata->base = FUNC6(&pdev->dev, res);
	if (FUNC1(ddata->base))
		return FUNC2(ddata->base);

	ddata->clk = FUNC5(&pdev->dev, NULL);
	if (FUNC1(ddata->clk))
		return FUNC2(ddata->clk);

	err = FUNC4(ddata->clk);
	if (err)
		return err;

	/*
	 * Set the Operating Mode in the Mode Register: only the selected device
	 * is clocked. Hence, registers of the other serial devices remain
	 * inaccessible and are read as zero. Also the external I/O lines of the
	 * Flexcom are muxed to reach the selected device.
	 */
	FUNC12(FUNC0(ddata->opmode), ddata->base + FLEX_MR);

	FUNC3(ddata->clk);

	return FUNC8(&pdev->dev);
}