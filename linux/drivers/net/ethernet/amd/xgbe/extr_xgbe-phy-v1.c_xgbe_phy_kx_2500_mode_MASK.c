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
struct xgbe_prv_data {int /*<<< orphan*/  netdev; struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {int /*<<< orphan*/ * dfe_tap_ena; int /*<<< orphan*/ * dfe_tap_cfg; int /*<<< orphan*/ * pq_skew; int /*<<< orphan*/ * blwc; int /*<<< orphan*/ * tx_amp; int /*<<< orphan*/ * cdr_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLWC_ENA ; 
 int /*<<< orphan*/  CDR_RATE ; 
 int /*<<< orphan*/  DATARATE ; 
 int /*<<< orphan*/  MDIO_CTRL1 ; 
 unsigned int MDIO_CTRL1_SPEED1G ; 
 unsigned int MDIO_CTRL1_SPEEDSEL ; 
 int /*<<< orphan*/  MDIO_CTRL2 ; 
 int /*<<< orphan*/  MDIO_MMD_PCS ; 
 unsigned int MDIO_PCS_CTRL2_10GBX ; 
 unsigned int MDIO_PCS_CTRL2_TYPE ; 
 int /*<<< orphan*/  PLLSEL ; 
 int /*<<< orphan*/  PQ_REG ; 
 int /*<<< orphan*/  RXDFE_CONFIG ; 
 int /*<<< orphan*/  RXTX_REG114 ; 
 int /*<<< orphan*/  RXTX_REG129 ; 
 int /*<<< orphan*/  RXTX_REG20 ; 
 int /*<<< orphan*/  RXTX_REG22 ; 
 int /*<<< orphan*/  SIR1_SPEED ; 
 int /*<<< orphan*/  TXAMP ; 
 int /*<<< orphan*/  WORDMODE ; 
 size_t XGBE_SPEED_2500 ; 
 int /*<<< orphan*/  XGBE_SPEED_2500_PLL ; 
 int /*<<< orphan*/  XGBE_SPEED_2500_RATE ; 
 int /*<<< orphan*/  XGBE_SPEED_2500_WORD ; 
 unsigned int FUNC0 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC5 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct xgbe_prv_data*) ; 

__attribute__((used)) static void FUNC9(struct xgbe_prv_data *pdata)
{
	struct xgbe_phy_data *phy_data = pdata->phy_data;
	unsigned int reg;

	/* Set PCS to KX/1G speed */
	reg = FUNC0(pdata, MDIO_MMD_PCS, MDIO_CTRL2);
	reg &= ~MDIO_PCS_CTRL2_TYPE;
	reg |= MDIO_PCS_CTRL2_10GBX;
	FUNC1(pdata, MDIO_MMD_PCS, MDIO_CTRL2, reg);

	reg = FUNC0(pdata, MDIO_MMD_PCS, MDIO_CTRL1);
	reg &= ~MDIO_CTRL1_SPEEDSEL;
	reg |= MDIO_CTRL1_SPEED1G;
	FUNC1(pdata, MDIO_MMD_PCS, MDIO_CTRL1, reg);

	FUNC7(pdata);

	/* Set SerDes to 2.5G speed */
	FUNC8(pdata);

	FUNC4(pdata, SIR1_SPEED, DATARATE, XGBE_SPEED_2500_RATE);
	FUNC4(pdata, SIR1_SPEED, WORDMODE, XGBE_SPEED_2500_WORD);
	FUNC4(pdata, SIR1_SPEED, PLLSEL, XGBE_SPEED_2500_PLL);

	FUNC4(pdata, SIR1_SPEED, CDR_RATE,
			   phy_data->cdr_rate[XGBE_SPEED_2500]);
	FUNC4(pdata, SIR1_SPEED, TXAMP,
			   phy_data->tx_amp[XGBE_SPEED_2500]);
	FUNC3(pdata, RXTX_REG20, BLWC_ENA,
			   phy_data->blwc[XGBE_SPEED_2500]);
	FUNC3(pdata, RXTX_REG114, PQ_REG,
			   phy_data->pq_skew[XGBE_SPEED_2500]);
	FUNC3(pdata, RXTX_REG129, RXDFE_CONFIG,
			   phy_data->dfe_tap_cfg[XGBE_SPEED_2500]);
	FUNC2(pdata, RXTX_REG22,
		      phy_data->dfe_tap_ena[XGBE_SPEED_2500]);

	FUNC6(pdata);

	FUNC5(pdata, link, pdata->netdev, "2.5GbE KX mode set\n");
}