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
struct tmio_mmc_host {TYPE_1__* pdata; } ;
struct renesas_sdhi {int dummy; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int CLK_CTL_SCLKEN ; 
 int /*<<< orphan*/  CTL_IRQ_MASK ; 
 int /*<<< orphan*/  CTL_SD_CARD_CLK_CTL ; 
 int /*<<< orphan*/  SH_MOBILE_SDHI_SCC_RVSCNTL ; 
 int SH_MOBILE_SDHI_SCC_RVSCNTL_RVSEN ; 
 int /*<<< orphan*/  TMIO_MASK_INIT_RCAR2 ; 
 int TMIO_MMC_MIN_RCAR2 ; 
 struct renesas_sdhi* FUNC0 (struct tmio_mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct tmio_mmc_host*,struct renesas_sdhi*) ; 
 int /*<<< orphan*/  FUNC2 (struct tmio_mmc_host*,struct renesas_sdhi*) ; 
 int FUNC3 (struct tmio_mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tmio_mmc_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tmio_mmc_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct tmio_mmc_host*,struct renesas_sdhi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tmio_mmc_host*,struct renesas_sdhi*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct tmio_mmc_host *host)
{
	struct renesas_sdhi *priv;

	priv = FUNC0(host);

	FUNC2(host, priv);
	FUNC1(host, priv);

	FUNC4(host, CTL_SD_CARD_CLK_CTL, CLK_CTL_SCLKEN |
			FUNC3(host, CTL_SD_CARD_CLK_CTL));

	FUNC7(host, priv, SH_MOBILE_SDHI_SCC_RVSCNTL,
		       ~SH_MOBILE_SDHI_SCC_RVSCNTL_RVSEN &
		       FUNC6(host, priv, SH_MOBILE_SDHI_SCC_RVSCNTL));

	FUNC7(host, priv, SH_MOBILE_SDHI_SCC_RVSCNTL,
		       ~SH_MOBILE_SDHI_SCC_RVSCNTL_RVSEN &
		       FUNC6(host, priv, SH_MOBILE_SDHI_SCC_RVSCNTL));

	if (host->pdata->flags & TMIO_MMC_MIN_RCAR2)
		FUNC5(host, CTL_IRQ_MASK,
					     TMIO_MASK_INIT_RCAR2);
}