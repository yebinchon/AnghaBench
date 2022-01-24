#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ssc_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  regs; int /*<<< orphan*/  list; int /*<<< orphan*/  clk; int /*<<< orphan*/  phybase; int /*<<< orphan*/  clk_from_rk_pin; struct atmel_ssc_platform_data* pdata; struct platform_device* pdev; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_7__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct atmel_ssc_platform_data {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IDR ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SR ; 
 struct atmel_ssc_platform_data* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,struct resource*) ; 
 struct ssc_device* FUNC10 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct ssc_device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ssc_list ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (struct ssc_device*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  user_lock ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct resource *regs;
	struct ssc_device *ssc;
	const struct atmel_ssc_platform_data *plat_dat;

	ssc = FUNC10(&pdev->dev, sizeof(struct ssc_device), GFP_KERNEL);
	if (!ssc) {
		FUNC5(&pdev->dev, "out of memory\n");
		return -ENOMEM;
	}

	ssc->pdev = pdev;

	plat_dat = FUNC2(pdev);
	if (!plat_dat)
		return -ENODEV;
	ssc->pdata = (struct atmel_ssc_platform_data *)plat_dat;

	if (pdev->dev.of_node) {
		struct device_node *np = pdev->dev.of_node;
		ssc->clk_from_rk_pin =
			FUNC12(np, "atmel,clk-from-rk-pin");
	}

	regs = FUNC14(pdev, IORESOURCE_MEM, 0);
	ssc->regs = FUNC9(&pdev->dev, regs);
	if (FUNC0(ssc->regs))
		return FUNC1(ssc->regs);

	ssc->phybase = regs->start;

	ssc->clk = FUNC8(&pdev->dev, "pclk");
	if (FUNC0(ssc->clk)) {
		FUNC5(&pdev->dev, "no pclk clock defined\n");
		return -ENXIO;
	}

	/* disable all interrupts */
	FUNC4(ssc->clk);
	FUNC20(ssc->regs, IDR, -1);
	FUNC18(ssc->regs, SR);
	FUNC3(ssc->clk);

	ssc->irq = FUNC13(pdev, 0);
	if (!ssc->irq) {
		FUNC5(&pdev->dev, "could not get irq\n");
		return -ENXIO;
	}

	FUNC16(&user_lock);
	FUNC11(&ssc->list, &ssc_list);
	FUNC17(&user_lock);

	FUNC15(pdev, ssc);

	FUNC7(&pdev->dev, "Atmel SSC device at 0x%p (irq %d)\n",
			ssc->regs, ssc->irq);

	if (FUNC19(ssc))
		FUNC6(&pdev->dev, "failed to auto-setup ssc for audio\n");

	return 0;
}