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
struct TYPE_2__ {scalar_t__ asp; } ;
struct stmmac_priv {int /*<<< orphan*/  dev; TYPE_1__ dma_cap; int /*<<< orphan*/  ioaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct stmmac_priv*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct stmmac_priv *priv)
{
	if (priv->dma_cap.asp) {
		FUNC0(priv->dev, "Enabling Safety Features\n");
		FUNC1(priv, priv->ioaddr, priv->dma_cap.asp);
	} else {
		FUNC0(priv->dev, "No Safety Features support found\n");
	}
}