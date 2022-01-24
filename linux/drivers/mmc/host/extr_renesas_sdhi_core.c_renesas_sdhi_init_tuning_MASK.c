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
struct tmio_mmc_host {int dummy; } ;
struct renesas_sdhi {int scc_tappos; } ;

/* Variables and functions */
 int CLK_CTL_SCLKEN ; 
 int /*<<< orphan*/  CTL_SD_CARD_CLK_CTL ; 
 int /*<<< orphan*/  CTL_STATUS ; 
 int /*<<< orphan*/  SH_MOBILE_SDHI_SCC_CKSEL ; 
 int SH_MOBILE_SDHI_SCC_CKSEL_DTSEL ; 
 int /*<<< orphan*/  SH_MOBILE_SDHI_SCC_DT2FF ; 
 int /*<<< orphan*/  SH_MOBILE_SDHI_SCC_DTCNTL ; 
 int SH_MOBILE_SDHI_SCC_DTCNTL_TAPEN ; 
 int SH_MOBILE_SDHI_SCC_DTCNTL_TAPNUM_MASK ; 
 int SH_MOBILE_SDHI_SCC_DTCNTL_TAPNUM_SHIFT ; 
 int /*<<< orphan*/  SH_MOBILE_SDHI_SCC_RVSCNTL ; 
 int SH_MOBILE_SDHI_SCC_RVSCNTL_RVSEN ; 
 struct renesas_sdhi* FUNC0 (struct tmio_mmc_host*) ; 
 int FUNC1 (struct tmio_mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tmio_mmc_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tmio_mmc_host*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct tmio_mmc_host*,struct renesas_sdhi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tmio_mmc_host*,struct renesas_sdhi*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static unsigned int FUNC6(struct tmio_mmc_host *host)
{
	struct renesas_sdhi *priv;

	priv = FUNC0(host);

	/* Initialize SCC */
	FUNC3(host, CTL_STATUS, 0x0);

	FUNC2(host, CTL_SD_CARD_CLK_CTL, ~CLK_CTL_SCLKEN &
			FUNC1(host, CTL_SD_CARD_CLK_CTL));

	/* set sampling clock selection range */
	FUNC5(host, priv, SH_MOBILE_SDHI_SCC_DTCNTL,
		       SH_MOBILE_SDHI_SCC_DTCNTL_TAPEN |
		       0x8 << SH_MOBILE_SDHI_SCC_DTCNTL_TAPNUM_SHIFT);

	FUNC5(host, priv, SH_MOBILE_SDHI_SCC_CKSEL,
		       SH_MOBILE_SDHI_SCC_CKSEL_DTSEL |
		       FUNC4(host, priv, SH_MOBILE_SDHI_SCC_CKSEL));

	FUNC5(host, priv, SH_MOBILE_SDHI_SCC_RVSCNTL,
		       ~SH_MOBILE_SDHI_SCC_RVSCNTL_RVSEN &
		       FUNC4(host, priv, SH_MOBILE_SDHI_SCC_RVSCNTL));

	FUNC5(host, priv, SH_MOBILE_SDHI_SCC_DT2FF, priv->scc_tappos);

	FUNC2(host, CTL_SD_CARD_CLK_CTL, CLK_CTL_SCLKEN |
			FUNC1(host, CTL_SD_CARD_CLK_CTL));

	/* Read TAPNUM */
	return (FUNC4(host, priv, SH_MOBILE_SDHI_SCC_DTCNTL) >>
		SH_MOBILE_SDHI_SCC_DTCNTL_TAPNUM_SHIFT) &
		SH_MOBILE_SDHI_SCC_DTCNTL_TAPNUM_MASK;
}