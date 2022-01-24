#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct stmmac_priv {int clk_csr; scalar_t__ ioaddr; TYPE_2__* hw; } ;
struct net_device {int dummy; } ;
struct mii_bus {struct net_device* priv; } ;
struct TYPE_3__ {unsigned int addr; unsigned int data; int clk_csr_shift; int clk_csr_mask; } ;
struct TYPE_4__ {TYPE_1__ mii; } ;

/* Variables and functions */
 int EBUSY ; 
 int EOPNOTSUPP ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int MII_ADDR_C45 ; 
 int MII_XGMAC_BUSY ; 
 int MII_XGMAC_READ ; 
 int MII_XGMAC_SADDR ; 
 struct stmmac_priv* FUNC1 (struct net_device*) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int,int,int,int) ; 
 int FUNC4 (struct stmmac_priv*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct mii_bus *bus, int phyaddr, int phyreg)
{
	struct net_device *ndev = bus->priv;
	struct stmmac_priv *priv = FUNC1(ndev);
	unsigned int mii_address = priv->hw->mii.addr;
	unsigned int mii_data = priv->hw->mii.data;
	u32 tmp, addr, value = MII_XGMAC_BUSY;
	int ret;

	if (phyreg & MII_ADDR_C45) {
		return -EOPNOTSUPP;
	} else {
		ret = FUNC4(priv, phyaddr, phyreg, &addr);
		if (ret)
			return ret;
	}

	value |= (priv->clk_csr << priv->hw->mii.clk_csr_shift)
		& priv->hw->mii.clk_csr_mask;
	value |= MII_XGMAC_SADDR | MII_XGMAC_READ;

	/* Wait until any existing MII operation is complete */
	if (FUNC3(priv->ioaddr + mii_data, tmp,
			       !(tmp & MII_XGMAC_BUSY), 100, 10000))
		return -EBUSY;

	/* Set the MII address register to read */
	FUNC5(addr, priv->ioaddr + mii_address);
	FUNC5(value, priv->ioaddr + mii_data);

	/* Wait until any existing MII operation is complete */
	if (FUNC3(priv->ioaddr + mii_data, tmp,
			       !(tmp & MII_XGMAC_BUSY), 100, 10000))
		return -EBUSY;

	/* Read the data from the MII data register */
	return FUNC2(priv->ioaddr + mii_data) & FUNC0(15, 0);
}