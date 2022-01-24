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
 scalar_t__ FTMAC100_OFFSET_PHYWDATA ; 
 unsigned int FTMAC100_PHYCR_MIIWR ; 
 unsigned int FUNC0 (int) ; 
 unsigned int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 
 struct ftmac100* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct net_device *netdev, int phy_id, int reg,
				int data)
{
	struct ftmac100 *priv = FUNC6(netdev);
	unsigned int phycr;
	int i;

	phycr = FUNC0(phy_id) |
		FUNC1(reg) |
		FTMAC100_PHYCR_MIIWR;

	data = FUNC2(data);

	FUNC4(data, priv->base + FTMAC100_OFFSET_PHYWDATA);
	FUNC4(phycr, priv->base + FTMAC100_OFFSET_PHYCR);

	for (i = 0; i < 10; i++) {
		phycr = FUNC3(priv->base + FTMAC100_OFFSET_PHYCR);

		if ((phycr & FTMAC100_PHYCR_MIIWR) == 0)
			return;

		FUNC7(100);
	}

	FUNC5(netdev, "mdio write timed out\n");
}