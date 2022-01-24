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
struct ftmac100 {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ FTMAC100_OFFSET_PHYCR ; 
 unsigned int FTMAC100_PHYCR_MIIRD ; 
 unsigned int FTMAC100_PHYCR_MIIRDATA ; 
 unsigned int FUNC0 (int) ; 
 unsigned int FUNC1 (int) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 struct ftmac100* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct net_device *netdev, int phy_id, int reg)
{
	struct ftmac100 *priv = FUNC5(netdev);
	unsigned int phycr;
	int i;

	phycr = FUNC0(phy_id) |
		FUNC1(reg) |
		FTMAC100_PHYCR_MIIRD;

	FUNC3(phycr, priv->base + FTMAC100_OFFSET_PHYCR);

	for (i = 0; i < 10; i++) {
		phycr = FUNC2(priv->base + FTMAC100_OFFSET_PHYCR);

		if ((phycr & FTMAC100_PHYCR_MIIRD) == 0)
			return phycr & FTMAC100_PHYCR_MIIRDATA;

		FUNC6(100);
	}

	FUNC4(netdev, "mdio read timed out\n");
	return 0;
}