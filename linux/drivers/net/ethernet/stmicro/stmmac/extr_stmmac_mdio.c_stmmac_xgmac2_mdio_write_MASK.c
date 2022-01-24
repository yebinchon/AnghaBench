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
typedef  int u16 ;
struct stmmac_priv {int clk_csr; scalar_t__ ioaddr; TYPE_2__* hw; } ;
struct net_device {int dummy; } ;
struct mii_bus {struct net_device* priv; } ;
struct TYPE_3__ {unsigned int addr; unsigned int data; int clk_csr_shift; int clk_csr_mask; } ;
struct TYPE_4__ {TYPE_1__ mii; } ;

/* Variables and functions */
 int EBUSY ; 
 int EOPNOTSUPP ; 
 int MII_ADDR_C45 ; 
 int MII_XGMAC_BUSY ; 
 int MII_XGMAC_SADDR ; 
 int MII_XGMAC_WRITE ; 
 struct stmmac_priv* FUNC0 (struct net_device*) ; 
 int FUNC1 (scalar_t__,int,int,int,int) ; 
 int FUNC2 (struct stmmac_priv*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct mii_bus *bus, int phyaddr,
				    int phyreg, u16 phydata)
{
	struct net_device *ndev = bus->priv;
	struct stmmac_priv *priv = FUNC0(ndev);
	unsigned int mii_address = priv->hw->mii.addr;
	unsigned int mii_data = priv->hw->mii.data;
	u32 addr, tmp, value = MII_XGMAC_BUSY;
	int ret;

	if (phyreg & MII_ADDR_C45) {
		return -EOPNOTSUPP;
	} else {
		ret = FUNC2(priv, phyaddr, phyreg, &addr);
		if (ret)
			return ret;
	}

	value |= (priv->clk_csr << priv->hw->mii.clk_csr_shift)
		& priv->hw->mii.clk_csr_mask;
	value |= phydata | MII_XGMAC_SADDR;
	value |= MII_XGMAC_WRITE;

	/* Wait until any existing MII operation is complete */
	if (FUNC1(priv->ioaddr + mii_data, tmp,
			       !(tmp & MII_XGMAC_BUSY), 100, 10000))
		return -EBUSY;

	/* Set the MII address register to write */
	FUNC3(addr, priv->ioaddr + mii_address);
	FUNC3(value, priv->ioaddr + mii_data);

	/* Wait until any existing MII operation is complete */
	return FUNC1(priv->ioaddr + mii_data, tmp,
				  !(tmp & MII_XGMAC_BUSY), 100, 10000);
}