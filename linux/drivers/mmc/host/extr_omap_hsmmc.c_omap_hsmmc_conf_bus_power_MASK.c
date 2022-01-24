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
typedef  int u32 ;
struct omap_hsmmc_host {int /*<<< orphan*/  base; TYPE_1__* pdata; } ;
struct TYPE_2__ {int controller_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAPA ; 
 int /*<<< orphan*/  HCTL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int OMAP_HSMMC_SUPPORTS_DUAL_VOLT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int SDVS18 ; 
 int SDVS30 ; 
 int SDVS_MASK ; 
 int VS18 ; 
 int VS30 ; 
 int /*<<< orphan*/  FUNC2 (struct omap_hsmmc_host*) ; 

__attribute__((used)) static void FUNC3(struct omap_hsmmc_host *host)
{
	u32 hctl, capa, value;

	/* Only MMC1 supports 3.0V */
	if (host->pdata->controller_flags & OMAP_HSMMC_SUPPORTS_DUAL_VOLT) {
		hctl = SDVS30;
		capa = VS30 | VS18;
	} else {
		hctl = SDVS18;
		capa = VS18;
	}

	value = FUNC0(host->base, HCTL) & ~SDVS_MASK;
	FUNC1(host->base, HCTL, value | hctl);

	value = FUNC0(host->base, CAPA);
	FUNC1(host->base, CAPA, value | capa);

	/* Set SD bus power bit */
	FUNC2(host);
}