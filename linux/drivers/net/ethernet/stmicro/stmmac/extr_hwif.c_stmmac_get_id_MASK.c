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
typedef  int u32 ;
struct stmmac_priv {int ioaddr; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static u32 FUNC3(struct stmmac_priv *priv, u32 id_reg)
{
	u32 reg = FUNC2(priv->ioaddr + id_reg);

	if (!reg) {
		FUNC1(priv->device, "Version ID not available\n");
		return 0x0;
	}

	FUNC1(priv->device, "User ID: 0x%x, Synopsys ID: 0x%x\n",
			(unsigned int)(reg & FUNC0(15, 8)) >> 8,
			(unsigned int)(reg & FUNC0(7, 0)));
	return reg & FUNC0(7, 0);
}