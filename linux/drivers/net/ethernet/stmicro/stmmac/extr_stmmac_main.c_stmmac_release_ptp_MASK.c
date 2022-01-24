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
struct stmmac_priv {TYPE_1__* plat; } ;
struct TYPE_2__ {scalar_t__ clk_ptp_ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct stmmac_priv*) ; 

__attribute__((used)) static void FUNC2(struct stmmac_priv *priv)
{
	if (priv->plat->clk_ptp_ref)
		FUNC0(priv->plat->clk_ptp_ref);
	FUNC1(priv);
}