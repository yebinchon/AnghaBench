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
struct resource {int /*<<< orphan*/  start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct hva_dev {int irq_its; int irq_err; scalar_t__ ip_version; int /*<<< orphan*/  clk; int /*<<< orphan*/  interrupt; int /*<<< orphan*/  protect_mutex; int /*<<< orphan*/  esram_size; int /*<<< orphan*/  esram_addr; int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTOSUSPEND_DELAY_MS ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  HVA_PREFIX ; 
 scalar_t__ HVA_VERSION_UNKNOWN ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,int /*<<< orphan*/ ,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,struct resource*) ; 
 int FUNC10 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct hva_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  hva_hw_err_interrupt ; 
 int /*<<< orphan*/  hva_hw_err_irq_thread ; 
 scalar_t__ FUNC12 (struct hva_dev*) ; 
 int /*<<< orphan*/  hva_hw_its_interrupt ; 
 int /*<<< orphan*/  hva_hw_its_irq_thread ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (struct platform_device*,int) ; 
 struct resource* FUNC16 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct device*) ; 
 int FUNC18 (struct device*) ; 
 int /*<<< orphan*/  FUNC19 (struct device*) ; 
 int /*<<< orphan*/  FUNC20 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct device*) ; 
 int /*<<< orphan*/  FUNC22 (struct device*) ; 
 int /*<<< orphan*/  FUNC23 (struct resource*) ; 

int FUNC24(struct platform_device *pdev, struct hva_dev *hva)
{
	struct device *dev = &pdev->dev;
	struct resource *regs;
	struct resource *esram;
	int ret;

	FUNC3(!hva);

	/* get memory for registers */
	regs = FUNC16(pdev, IORESOURCE_MEM, 0);
	hva->regs = FUNC9(dev, regs);
	if (FUNC1(hva->regs)) {
		FUNC6(dev, "%s     failed to get regs\n", HVA_PREFIX);
		return FUNC2(hva->regs);
	}

	/* get memory for esram */
	esram = FUNC16(pdev, IORESOURCE_MEM, 1);
	if (!esram) {
		FUNC6(dev, "%s     failed to get esram\n", HVA_PREFIX);
		return -ENODEV;
	}
	hva->esram_addr = esram->start;
	hva->esram_size = FUNC23(esram);

	FUNC7(dev, "%s     esram reserved for address: 0x%x size:%d\n",
		 HVA_PREFIX, hva->esram_addr, hva->esram_size);

	/* get clock resource */
	hva->clk = FUNC8(dev, "clk_hva");
	if (FUNC1(hva->clk)) {
		FUNC6(dev, "%s     failed to get clock\n", HVA_PREFIX);
		return FUNC2(hva->clk);
	}

	ret = FUNC4(hva->clk);
	if (ret < 0) {
		FUNC6(dev, "%s     failed to prepare clock\n", HVA_PREFIX);
		hva->clk = FUNC0(-EINVAL);
		return ret;
	}

	/* get status interruption resource */
	ret  = FUNC15(pdev, 0);
	if (ret < 0)
		goto err_clk;
	hva->irq_its = ret;

	ret = FUNC10(dev, hva->irq_its, hva_hw_its_interrupt,
					hva_hw_its_irq_thread,
					IRQF_ONESHOT,
					"hva_its_irq", hva);
	if (ret) {
		FUNC6(dev, "%s     failed to install status IRQ 0x%x\n",
			HVA_PREFIX, hva->irq_its);
		goto err_clk;
	}
	FUNC11(hva->irq_its);

	/* get error interruption resource */
	ret = FUNC15(pdev, 1);
	if (ret < 0)
		goto err_clk;
	hva->irq_err = ret;

	ret = FUNC10(dev, hva->irq_err, hva_hw_err_interrupt,
					hva_hw_err_irq_thread,
					IRQF_ONESHOT,
					"hva_err_irq", hva);
	if (ret) {
		FUNC6(dev, "%s     failed to install error IRQ 0x%x\n",
			HVA_PREFIX, hva->irq_err);
		goto err_clk;
	}
	FUNC11(hva->irq_err);

	/* initialise protection mutex */
	FUNC14(&hva->protect_mutex);

	/* initialise completion signal */
	FUNC13(&hva->interrupt);

	/* initialise runtime power management */
	FUNC20(dev, AUTOSUSPEND_DELAY_MS);
	FUNC22(dev);
	FUNC21(dev);
	FUNC17(dev);

	ret = FUNC18(dev);
	if (ret < 0) {
		FUNC6(dev, "%s     failed to set PM\n", HVA_PREFIX);
		goto err_clk;
	}

	/* check IP hardware version */
	hva->ip_version = FUNC12(hva);

	if (hva->ip_version == HVA_VERSION_UNKNOWN) {
		ret = -EINVAL;
		goto err_pm;
	}

	FUNC7(dev, "%s     found hva device (version 0x%lx)\n", HVA_PREFIX,
		 hva->ip_version);

	return 0;

err_pm:
	FUNC19(dev);
err_clk:
	if (hva->clk)
		FUNC5(hva->clk);

	return ret;
}