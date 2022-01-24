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
struct emac_adapter {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ EMAC_DMA_MAS_CTRL ; 
 int /*<<< orphan*/  INT_RD_CLR_EN ; 
 int /*<<< orphan*/  SOFT_RST ; 
 int /*<<< orphan*/  FUNC0 (struct emac_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

void FUNC3(struct emac_adapter *adpt)
{
	FUNC0(adpt);

	FUNC1(adpt->base + EMAC_DMA_MAS_CTRL, 0, SOFT_RST);
	FUNC2(100, 150); /* reset may take up to 100usec */

	/* interrupt clear-on-read */
	FUNC1(adpt->base + EMAC_DMA_MAS_CTRL, 0, INT_RD_CLR_EN);
}