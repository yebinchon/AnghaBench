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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct link_params {int link_flags; int /*<<< orphan*/  port; int /*<<< orphan*/  shmem_base; int /*<<< orphan*/  chip_id; struct bnx2x_phy* phy; struct bnx2x* bp; } ;
struct bnx2x_phy {int /*<<< orphan*/  media_type; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ETH_PHY_NOT_PRESENT ; 
 size_t EXT_PHY1 ; 
 size_t INT_PHY ; 
 int /*<<< orphan*/  MDIO_WC_DEVAD ; 
 int /*<<< orphan*/  MDIO_WC_REG_DIGITAL5_MISC6 ; 
 int /*<<< orphan*/  MISC_REGISTERS_GPIO_HIGH ; 
 int /*<<< orphan*/  MISC_REGISTERS_GPIO_INT_OUTPUT_CLR ; 
 int /*<<< orphan*/  MISC_REGISTERS_GPIO_INT_OUTPUT_SET ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 int PHY_INITIALIZED ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct link_params*,struct bnx2x_phy*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct link_params*,struct bnx2x_phy*) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x*,struct link_params*) ; 
 int /*<<< orphan*/  FUNC9 (struct link_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct bnx2x_phy*,struct link_params*) ; 
 int /*<<< orphan*/  FUNC11 (struct link_params*,struct bnx2x_phy*,int) ; 
 scalar_t__ FUNC12 (struct bnx2x_phy*,struct link_params*) ; 
 int /*<<< orphan*/  FUNC13 (struct bnx2x_phy*,struct link_params*) ; 
 int /*<<< orphan*/  FUNC14 (struct bnx2x*,struct bnx2x_phy*,int) ; 

void FUNC15(struct link_params *params)
{
	struct bnx2x *bp = params->bp;
	struct bnx2x_phy *phy;
	u32 gpio_val;
	u8 gpio_num, gpio_port;
	if (FUNC0(bp)) {
		phy = &params->phy[INT_PHY];
		/* Always enable TX laser,will be disabled in case of fault */
		FUNC11(params, phy, 1);
	} else {
		phy = &params->phy[EXT_PHY1];
	}
	if (FUNC4(bp, params->chip_id, params->shmem_base,
				      params->port, &gpio_num, &gpio_port) ==
	    -EINVAL) {
		FUNC1(NETIF_MSG_LINK, "Failed to get MOD_ABS interrupt config\n");
		return;
	}

	/* Set valid module led off */
	FUNC9(params, MISC_REGISTERS_GPIO_HIGH);

	/* Get current gpio val reflecting module plugged in / out*/
	gpio_val = FUNC3(bp, gpio_num, gpio_port);

	/* Call the handling function in case module is detected */
	if (gpio_val == 0) {
		FUNC8(bp, params);
		FUNC6(params, phy);

		FUNC5(params, phy, 1);
		FUNC7(bp, gpio_num,
				   MISC_REGISTERS_GPIO_INT_OUTPUT_CLR,
				   gpio_port);
		if (FUNC12(phy, params) == 0) {
			FUNC10(phy, params);
			if (FUNC0(bp)) {
				u16 rx_tx_in_reset;
				/* In case WC is out of reset, reconfigure the
				 * link speed while taking into account 1G
				 * module limitation.
				 */
				FUNC2(bp, phy,
						MDIO_WC_DEVAD,
						MDIO_WC_REG_DIGITAL5_MISC6,
						&rx_tx_in_reset);
				if ((!rx_tx_in_reset) &&
				    (params->link_flags &
				     PHY_INITIALIZED)) {
					FUNC14(bp, phy, 1);
					FUNC13(phy, params);
					FUNC14(bp, phy, 0);
				}
			}
		} else {
			FUNC1(NETIF_MSG_LINK, "SFP+ module is not initialized\n");
		}
	} else {
		FUNC7(bp, gpio_num,
				   MISC_REGISTERS_GPIO_INT_OUTPUT_SET,
				   gpio_port);
		/* Module was plugged out.
		 * Disable transmit for this module
		 */
		phy->media_type = ETH_PHY_NOT_PRESENT;
	}
}