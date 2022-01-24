#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sdhci_s3c {int /*<<< orphan*/  clk_io; TYPE_1__* pdata; scalar_t__ ext_cd_irq; } ;
struct sdhci_host {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ cd_type; } ;

/* Variables and functions */
 scalar_t__ S3C_SDHCI_CD_INTERNAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct sdhci_s3c*) ; 
 struct sdhci_host* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sdhci_host*) ; 
 struct sdhci_s3c* FUNC7 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC8 (struct sdhci_host*,int) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct sdhci_host *host =  FUNC3(pdev);
	struct sdhci_s3c *sc = FUNC7(host);

	if (sc->ext_cd_irq)
		FUNC2(sc->ext_cd_irq, sc);

#ifdef CONFIG_PM
	if (sc->pdata->cd_type != S3C_SDHCI_CD_INTERNAL)
		clk_prepare_enable(sc->clk_io);
#endif
	FUNC8(host, 1);

	FUNC5(&pdev->dev);
	FUNC4(&pdev->dev);

	FUNC0(sc->clk_io);

	FUNC6(host);

	return 0;
}