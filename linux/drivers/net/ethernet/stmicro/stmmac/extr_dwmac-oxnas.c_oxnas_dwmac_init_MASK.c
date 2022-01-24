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
struct platform_device {int dummy; } ;
struct oxnas_dwmac {int /*<<< orphan*/  regmap; int /*<<< orphan*/  clk; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DWMAC_AUTO_TX_SOURCE ; 
 int /*<<< orphan*/  DWMAC_CKEN_GTX ; 
 int /*<<< orphan*/  DWMAC_CKEN_RXN_OUT ; 
 int /*<<< orphan*/  DWMAC_CKEN_RX_IN ; 
 int /*<<< orphan*/  DWMAC_CKEN_RX_OUT ; 
 int /*<<< orphan*/  DWMAC_CKEN_TXN_OUT ; 
 int /*<<< orphan*/  DWMAC_CKEN_TX_IN ; 
 int /*<<< orphan*/  DWMAC_CKEN_TX_OUT ; 
 unsigned int FUNC1 (int) ; 
 unsigned int FUNC2 (int) ; 
 int /*<<< orphan*/  DWMAC_SIMPLE_MUX ; 
 unsigned int FUNC3 (int) ; 
 unsigned int FUNC4 (int) ; 
 int /*<<< orphan*/  OXNAS_DWMAC_CTRL_REGOFFSET ; 
 int /*<<< orphan*/  OXNAS_DWMAC_DELAY_REGOFFSET ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev, void *priv)
{
	struct oxnas_dwmac *dwmac = priv;
	unsigned int value;
	int ret;

	/* Reset HW here before changing the glue configuration */
	ret = FUNC7(dwmac->dev);
	if (ret)
		return ret;

	ret = FUNC6(dwmac->clk);
	if (ret)
		return ret;

	ret = FUNC8(dwmac->regmap, OXNAS_DWMAC_CTRL_REGOFFSET, &value);
	if (ret < 0) {
		FUNC5(dwmac->clk);
		return ret;
	}

	/* Enable GMII_GTXCLK to follow GMII_REFCLK, required for gigabit PHY */
	value |= FUNC0(DWMAC_CKEN_GTX)		|
		 /* Use simple mux for 25/125 Mhz clock switching */
		 FUNC0(DWMAC_SIMPLE_MUX)		|
		 /* set auto switch tx clock source */
		 FUNC0(DWMAC_AUTO_TX_SOURCE)	|
		 /* enable tx & rx vardelay */
		 FUNC0(DWMAC_CKEN_TX_OUT)		|
		 FUNC0(DWMAC_CKEN_TXN_OUT)	|
		 FUNC0(DWMAC_CKEN_TX_IN)		|
		 FUNC0(DWMAC_CKEN_RX_OUT)		|
		 FUNC0(DWMAC_CKEN_RXN_OUT)	|
		 FUNC0(DWMAC_CKEN_RX_IN);
	FUNC9(dwmac->regmap, OXNAS_DWMAC_CTRL_REGOFFSET, value);

	/* set tx & rx vardelay */
	value = FUNC4(4)	|
		FUNC3(2)	|
		FUNC2(10)	|
		FUNC1(8);
	FUNC9(dwmac->regmap, OXNAS_DWMAC_DELAY_REGOFFSET, value);

	return 0;
}