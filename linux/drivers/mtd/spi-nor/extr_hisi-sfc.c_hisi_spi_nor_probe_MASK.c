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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct hifmc_host {void* clk; int /*<<< orphan*/  lock; int /*<<< orphan*/  buffer; int /*<<< orphan*/  dma_buffer; void* iobase; void* regbase; struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HIFMC_DMA_MAX_LEN ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 void* FUNC6 (struct device*,int /*<<< orphan*/ *) ; 
 void* FUNC7 (struct device*,struct resource*) ; 
 struct hifmc_host* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct hifmc_host*) ; 
 int FUNC12 (struct hifmc_host*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC15 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct hifmc_host*) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct resource *res;
	struct hifmc_host *host;
	int ret;

	host = FUNC8(dev, sizeof(*host), GFP_KERNEL);
	if (!host)
		return -ENOMEM;

	FUNC16(pdev, host);
	host->dev = dev;

	res = FUNC15(pdev, IORESOURCE_MEM, "control");
	host->regbase = FUNC7(dev, res);
	if (FUNC1(host->regbase))
		return FUNC2(host->regbase);

	res = FUNC15(pdev, IORESOURCE_MEM, "memory");
	host->iobase = FUNC7(dev, res);
	if (FUNC1(host->iobase))
		return FUNC2(host->iobase);

	host->clk = FUNC6(dev, NULL);
	if (FUNC1(host->clk))
		return FUNC2(host->clk);

	ret = FUNC9(dev, FUNC0(32));
	if (ret) {
		FUNC5(dev, "Unable to set dma mask\n");
		return ret;
	}

	host->buffer = FUNC10(dev, HIFMC_DMA_MAX_LEN,
			&host->dma_buffer, GFP_KERNEL);
	if (!host->buffer)
		return -ENOMEM;

	ret = FUNC4(host->clk);
	if (ret)
		return ret;

	FUNC14(&host->lock);
	FUNC11(host);
	ret = FUNC12(host);
	if (ret)
		FUNC13(&host->lock);

	FUNC3(host->clk);
	return ret;
}