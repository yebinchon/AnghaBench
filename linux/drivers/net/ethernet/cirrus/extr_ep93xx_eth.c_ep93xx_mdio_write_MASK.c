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
struct net_device {int dummy; } ;
struct ep93xx_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_MIICMD ; 
 int REG_MIICMD_WRITE ; 
 int /*<<< orphan*/  REG_MIIDATA ; 
 int /*<<< orphan*/  REG_MIISTS ; 
 int REG_MIISTS_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ep93xx_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct ep93xx_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ep93xx_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev, int phy_id, int reg, int data)
{
	struct ep93xx_priv *ep = FUNC1(dev);
	int i;

	FUNC4(ep, REG_MIIDATA, data);
	FUNC4(ep, REG_MIICMD, REG_MIICMD_WRITE | (phy_id << 5) | reg);

	for (i = 0; i < 10; i++) {
		if ((FUNC3(ep, REG_MIISTS) & REG_MIISTS_BUSY) == 0)
			break;
		FUNC0(1);
	}

	if (i == 10)
		FUNC2("mdio write timed out\n");
}