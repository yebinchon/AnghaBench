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
typedef  int u32 ;
struct phy_device {scalar_t__ speed; } ;
struct netsec_priv {int /*<<< orphan*/  et_coalesce; TYPE_1__* ndev; } ;
struct TYPE_2__ {struct phy_device* phydev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GMAC_REG_BMR ; 
 int /*<<< orphan*/  GMAC_REG_MCR ; 
 int /*<<< orphan*/  GMAC_REG_MFFR ; 
 int /*<<< orphan*/  GMAC_REG_OMR ; 
 int /*<<< orphan*/  GMAC_REG_RDLAR ; 
 int /*<<< orphan*/  GMAC_REG_TDLAR ; 
 int /*<<< orphan*/  MAC_REG_DESC_INIT ; 
 int /*<<< orphan*/  MAC_REG_DESC_SOFT_RST ; 
 int NETSEC_GMAC_BMR_REG_COMMON ; 
 int NETSEC_GMAC_BMR_REG_RESET ; 
 int NETSEC_GMAC_BMR_REG_SWR ; 
 int NETSEC_GMAC_MCR_REG_CST ; 
 int NETSEC_GMAC_MCR_REG_HALF_DUPLEX_COMMON ; 
 int NETSEC_GMAC_OMR_REG_SR ; 
 int NETSEC_GMAC_OMR_REG_ST ; 
 int NETSEC_GMAC_RDLAR_REG_COMMON ; 
 int NETSEC_GMAC_TDLAR_REG_COMMON ; 
 int /*<<< orphan*/  NETSEC_REG_NRM_RX_INTEN_CLR ; 
 int /*<<< orphan*/  NETSEC_REG_NRM_TX_INTEN_CLR ; 
 scalar_t__ SPEED_1000 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct netsec_priv*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct netsec_priv*) ; 
 scalar_t__ FUNC3 (struct netsec_priv*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct netsec_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct netsec_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct netsec_priv *priv)
{
	struct phy_device *phydev = priv->ndev->phydev;
	u32 value = 0;
	int ret;

	if (phydev->speed != SPEED_1000)
		value = (NETSEC_GMAC_MCR_REG_CST |
			 NETSEC_GMAC_MCR_REG_HALF_DUPLEX_COMMON);

	if (FUNC3(priv, GMAC_REG_MCR, value))
		return -ETIMEDOUT;
	if (FUNC3(priv, GMAC_REG_BMR,
			     NETSEC_GMAC_BMR_REG_RESET))
		return -ETIMEDOUT;

	/* Wait soft reset */
	FUNC6(1000, 5000);

	ret = FUNC1(priv, GMAC_REG_BMR, &value);
	if (ret)
		return ret;
	if (value & NETSEC_GMAC_BMR_REG_SWR)
		return -EAGAIN;

	FUNC5(priv, MAC_REG_DESC_SOFT_RST, 1);
	if (FUNC4(priv, MAC_REG_DESC_SOFT_RST, 1))
		return -ETIMEDOUT;

	FUNC5(priv, MAC_REG_DESC_INIT, 1);
	if (FUNC4(priv, MAC_REG_DESC_INIT, 1))
		return -ETIMEDOUT;

	if (FUNC3(priv, GMAC_REG_BMR,
			     NETSEC_GMAC_BMR_REG_COMMON))
		return -ETIMEDOUT;
	if (FUNC3(priv, GMAC_REG_RDLAR,
			     NETSEC_GMAC_RDLAR_REG_COMMON))
		return -ETIMEDOUT;
	if (FUNC3(priv, GMAC_REG_TDLAR,
			     NETSEC_GMAC_TDLAR_REG_COMMON))
		return -ETIMEDOUT;
	if (FUNC3(priv, GMAC_REG_MFFR, 0x80000001))
		return -ETIMEDOUT;

	ret = FUNC2(priv);
	if (ret)
		return ret;

	ret = FUNC1(priv, GMAC_REG_OMR, &value);
	if (ret)
		return ret;

	value |= NETSEC_GMAC_OMR_REG_SR;
	value |= NETSEC_GMAC_OMR_REG_ST;

	FUNC5(priv, NETSEC_REG_NRM_RX_INTEN_CLR, ~0);
	FUNC5(priv, NETSEC_REG_NRM_TX_INTEN_CLR, ~0);

	FUNC0(priv->ndev, &priv->et_coalesce);

	if (FUNC3(priv, GMAC_REG_OMR, value))
		return -ETIMEDOUT;

	return 0;
}