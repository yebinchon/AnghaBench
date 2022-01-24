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
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct mii_bus {struct net_device* priv; } ;
struct ftgmac100 {scalar_t__ base; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FTGMAC100_OFFSET_PHYCR ; 
 scalar_t__ FTGMAC100_OFFSET_PHYDATA ; 
 unsigned int FTGMAC100_PHYCR_MDC_CYCTHR_MASK ; 
 unsigned int FTGMAC100_PHYCR_MIIWR ; 
 unsigned int FUNC0 (int) ; 
 unsigned int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 
 struct ftgmac100* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct mii_bus *bus, int phy_addr,
				   int regnum, u16 value)
{
	struct net_device *netdev = bus->priv;
	struct ftgmac100 *priv = FUNC6(netdev);
	unsigned int phycr;
	int data;
	int i;

	phycr = FUNC3(priv->base + FTGMAC100_OFFSET_PHYCR);

	/* preserve MDC cycle threshold */
	phycr &= FTGMAC100_PHYCR_MDC_CYCTHR_MASK;

	phycr |= FUNC0(phy_addr) |
		 FUNC1(regnum) |
		 FTGMAC100_PHYCR_MIIWR;

	data = FUNC2(value);

	FUNC4(data, priv->base + FTGMAC100_OFFSET_PHYDATA);
	FUNC4(phycr, priv->base + FTGMAC100_OFFSET_PHYCR);

	for (i = 0; i < 10; i++) {
		phycr = FUNC3(priv->base + FTGMAC100_OFFSET_PHYCR);

		if ((phycr & FTGMAC100_PHYCR_MIIWR) == 0)
			return 0;

		FUNC7(100);
	}

	FUNC5(netdev, "mdio write timed out\n");
	return -EIO;
}