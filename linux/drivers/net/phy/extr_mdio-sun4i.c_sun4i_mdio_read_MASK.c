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
struct sun4i_mdio_data {scalar_t__ membase; } ;
struct mii_bus {struct sun4i_mdio_data* priv; } ;

/* Variables and functions */
 scalar_t__ EMAC_MAC_MADR_REG ; 
 scalar_t__ EMAC_MAC_MCMD_REG ; 
 scalar_t__ EMAC_MAC_MIND_REG ; 
 scalar_t__ EMAC_MAC_MRDD_REG ; 
 int ETIMEDOUT ; 
 unsigned long MDIO_TIMEOUT ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct mii_bus *bus, int mii_id, int regnum)
{
	struct sun4i_mdio_data *data = bus->priv;
	unsigned long timeout_jiffies;
	int value;

	/* issue the phy address and reg */
	FUNC3((mii_id << 8) | regnum, data->membase + EMAC_MAC_MADR_REG);
	/* pull up the phy io line */
	FUNC3(0x1, data->membase + EMAC_MAC_MCMD_REG);

	/* Wait read complete */
	timeout_jiffies = jiffies + MDIO_TIMEOUT;
	while (FUNC1(data->membase + EMAC_MAC_MIND_REG) & 0x1) {
		if (FUNC2(timeout_jiffies))
			return -ETIMEDOUT;
		FUNC0(1);
	}

	/* push down the phy io line */
	FUNC3(0x0, data->membase + EMAC_MAC_MCMD_REG);
	/* and read data */
	value = FUNC1(data->membase + EMAC_MAC_MRDD_REG);

	return value;
}