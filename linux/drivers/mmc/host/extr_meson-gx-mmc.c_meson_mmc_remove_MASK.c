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
struct meson_host {int /*<<< orphan*/  mmc; int /*<<< orphan*/  core_clk; int /*<<< orphan*/  mmc_clk; int /*<<< orphan*/  bounce_dma_addr; int /*<<< orphan*/  bounce_buf; int /*<<< orphan*/  bounce_buf_size; int /*<<< orphan*/  dev; int /*<<< orphan*/  dram_access_quirk; int /*<<< orphan*/  descs_dma_addr; int /*<<< orphan*/  descs; int /*<<< orphan*/  irq; scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  SD_EMMC_DESC_BUF_LEN ; 
 scalar_t__ SD_EMMC_IRQ_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct meson_host* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct meson_host*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct meson_host *host = FUNC1(&pdev->dev);

	FUNC5(host->mmc);

	/* disable interrupts */
	FUNC6(0, host->regs + SD_EMMC_IRQ_EN);
	FUNC3(host->irq, host);

	FUNC2(host->dev, SD_EMMC_DESC_BUF_LEN,
			  host->descs, host->descs_dma_addr);

	if (!host->dram_access_quirk)
		FUNC2(host->dev, host->bounce_buf_size,
				  host->bounce_buf, host->bounce_dma_addr);

	FUNC0(host->mmc_clk);
	FUNC0(host->core_clk);

	FUNC4(host->mmc);
	return 0;
}