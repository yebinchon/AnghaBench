#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dw_mci {int /*<<< orphan*/  biu_clk; int /*<<< orphan*/  ciu_clk; TYPE_2__* pdata; TYPE_1__* dma_ops; scalar_t__ use_dma; scalar_t__ slot; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  rstc; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* exit ) (struct dw_mci*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CLKENA ; 
 int /*<<< orphan*/  CLKSRC ; 
 int /*<<< orphan*/  INTMASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RINTSTS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct dw_mci*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dw_mci*) ; 

void FUNC7(struct dw_mci *host)
{
	FUNC2(host->dev, "remove slot\n");
	if (host->slot)
		FUNC3(host->slot);

	FUNC4(host, RINTSTS, 0xFFFFFFFF);
	FUNC4(host, INTMASK, 0); /* disable all mmc interrupt first */

	/* disable clock to CIU */
	FUNC4(host, CLKENA, 0);
	FUNC4(host, CLKSRC, 0);

	if (host->use_dma && host->dma_ops->exit)
		host->dma_ops->exit(host);

	if (!FUNC0(host->pdata->rstc))
		FUNC5(host->pdata->rstc);

	FUNC1(host->ciu_clk);
	FUNC1(host->biu_clk);
}