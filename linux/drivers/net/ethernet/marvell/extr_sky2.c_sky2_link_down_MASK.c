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
typedef  int u16 ;
struct sky2_port {unsigned int port; int /*<<< orphan*/  netdev; struct sky2_hw* hw; } ;
struct sky2_hw {int dummy; } ;

/* Variables and functions */
 int GM_GPCR_RX_ENA ; 
 int GM_GPCR_TX_ENA ; 
 int /*<<< orphan*/  GM_GP_CTRL ; 
 int /*<<< orphan*/  LINKLED_OFF ; 
 int /*<<< orphan*/  LNK_LED_REG ; 
 int /*<<< orphan*/  PHY_MARV_INT_MASK ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sky2_hw*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sky2_hw*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sky2_hw*,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sky2_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct sky2_hw*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct sky2_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct sky2_port *sky2)
{
	struct sky2_hw *hw = sky2->hw;
	unsigned port = sky2->port;
	u16 reg;

	FUNC1(hw, port, PHY_MARV_INT_MASK, 0);

	reg = FUNC2(hw, port, GM_GP_CTRL);
	reg &= ~(GM_GPCR_RX_ENA | GM_GPCR_TX_ENA);
	FUNC3(hw, port, GM_GP_CTRL, reg);

	FUNC4(sky2->netdev);

	/* Turn off link LED */
	FUNC7(hw, FUNC0(port, LNK_LED_REG), LINKLED_OFF);

	FUNC5(sky2, link, sky2->netdev, "Link is down\n");

	FUNC6(hw, port);
}