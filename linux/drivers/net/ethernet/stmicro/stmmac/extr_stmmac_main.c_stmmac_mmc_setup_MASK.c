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
struct TYPE_2__ {scalar_t__ rmon; } ;
struct stmmac_priv {int /*<<< orphan*/  dev; int /*<<< orphan*/  mmc; int /*<<< orphan*/  mmcaddr; TYPE_1__ dma_cap; } ;
struct stmmac_counters {int dummy; } ;

/* Variables and functions */
 unsigned int MMC_CNTRL_COUNTER_RESET ; 
 unsigned int MMC_CNTRL_FULL_HALF_PRESET ; 
 unsigned int MMC_CNTRL_PRESET ; 
 unsigned int MMC_CNTRL_RESET_ON_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct stmmac_priv*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct stmmac_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct stmmac_priv *priv)
{
	unsigned int mode = MMC_CNTRL_RESET_ON_READ | MMC_CNTRL_COUNTER_RESET |
			    MMC_CNTRL_PRESET | MMC_CNTRL_FULL_HALF_PRESET;

	FUNC3(priv, priv->mmcaddr);

	if (priv->dma_cap.rmon) {
		FUNC2(priv, priv->mmcaddr, mode);
		FUNC0(&priv->mmc, 0, sizeof(struct stmmac_counters));
	} else
		FUNC1(priv->dev, "No MAC Management Counters available\n");
}