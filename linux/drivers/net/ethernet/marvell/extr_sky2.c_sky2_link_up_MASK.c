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
struct sky2_port {unsigned int port; scalar_t__ duplex; size_t flow_status; int /*<<< orphan*/  speed; int /*<<< orphan*/  netdev; struct sky2_hw* hw; } ;
struct sky2_hw {int /*<<< orphan*/  watchdog_timer; } ;

/* Variables and functions */
 scalar_t__ DUPLEX_FULL ; 
#define  FC_BOTH 131 
#define  FC_NONE 130 
#define  FC_RX 129 
#define  FC_TX 128 
 int LINKLED_BLINK_OFF ; 
 int LINKLED_LINKSYNC_OFF ; 
 int LINKLED_ON ; 
 int /*<<< orphan*/  LNK_LED_REG ; 
 int /*<<< orphan*/  PHY_MARV_INT_MASK ; 
 int /*<<< orphan*/  PHY_M_DEF_MSK ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sky2_hw*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sky2_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct sky2_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct sky2_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct sky2_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct sky2_port *sky2)
{
	struct sky2_hw *hw = sky2->hw;
	unsigned port = sky2->port;
	static const char *fc_name[] = {
		[FC_NONE]	= "none",
		[FC_TX]		= "tx",
		[FC_RX]		= "rx",
		[FC_BOTH]	= "both",
	};

	FUNC6(sky2);

	FUNC5(sky2);

	FUNC1(hw, port, PHY_MARV_INT_MASK, PHY_M_DEF_MSK);

	FUNC3(sky2->netdev);

	FUNC2(&hw->watchdog_timer, jiffies + 1);

	/* Turn on link LED */
	FUNC7(hw, FUNC0(port, LNK_LED_REG),
		    LINKLED_ON | LINKLED_BLINK_OFF | LINKLED_LINKSYNC_OFF);

	FUNC4(sky2, link, sky2->netdev,
		   "Link is up at %d Mbps, %s duplex, flow control %s\n",
		   sky2->speed,
		   sky2->duplex == DUPLEX_FULL ? "full" : "half",
		   fc_name[sky2->flow_status]);
}