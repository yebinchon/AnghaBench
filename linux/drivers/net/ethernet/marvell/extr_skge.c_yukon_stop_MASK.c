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
struct skge_port {int port; struct skge_hw* hw; } ;
struct skge_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GMAC_CTRL ; 
 int /*<<< orphan*/  GMAC_IRQ_MSK ; 
 int /*<<< orphan*/  GMC_RST_SET ; 
 int GM_GPCR_RX_ENA ; 
 int GM_GPCR_TX_ENA ; 
 int /*<<< orphan*/  GM_GP_CTRL ; 
 int /*<<< orphan*/  GPC_RST_SET ; 
 int /*<<< orphan*/  GPHY_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct skge_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct skge_hw*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct skge_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct skge_hw*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct skge_hw*,int) ; 

__attribute__((used)) static void FUNC6(struct skge_port *skge)
{
	struct skge_hw *hw = skge->hw;
	int port = skge->port;

	FUNC3(hw, FUNC0(port, GMAC_IRQ_MSK), 0);
	FUNC4(hw, port);

	FUNC2(hw, port, GM_GP_CTRL,
			 FUNC1(hw, port, GM_GP_CTRL)
			 & ~(GM_GPCR_TX_ENA|GM_GPCR_RX_ENA));
	FUNC1(hw, port, GM_GP_CTRL);

	FUNC5(hw, port);

	/* set GPHY Control reset */
	FUNC3(hw, FUNC0(port, GPHY_CTRL), GPC_RST_SET);
	FUNC3(hw, FUNC0(port, GMAC_CTRL), GMC_RST_SET);
}