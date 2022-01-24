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
struct renesas_sdhi {int dummy; } ;

/* Variables and functions */
 int CLK_CTL_SCLKEN ; 
 int /*<<< orphan*/  CTL_SD_CARD_CLK_CTL ; 
 int /*<<< orphan*/  SH_MOBILE_SDHI_SCC_CKSEL ; 
 int SH_MOBILE_SDHI_SCC_CKSEL_DTSEL ; 
 int FUNC0 (struct tmio_mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tmio_mmc_host*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct tmio_mmc_host*,struct renesas_sdhi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tmio_mmc_host*,struct renesas_sdhi*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct tmio_mmc_host *host,
				   struct renesas_sdhi *priv)
{
	FUNC1(host, CTL_SD_CARD_CLK_CTL, ~CLK_CTL_SCLKEN &
			FUNC0(host, CTL_SD_CARD_CLK_CTL));

	FUNC3(host, priv, SH_MOBILE_SDHI_SCC_CKSEL,
		       ~SH_MOBILE_SDHI_SCC_CKSEL_DTSEL &
		       FUNC2(host, priv,
				     SH_MOBILE_SDHI_SCC_CKSEL));
}