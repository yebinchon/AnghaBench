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
typedef  int u32 ;
struct altera_tse_private {int /*<<< orphan*/  mac_dev; } ;

/* Variables and functions */
 int ALTERA_TSE_SW_RESET_WATCHDOG_CNTR ; 
 int MAC_CMDCFG_CNT_RESET ; 
 int MAC_CMDCFG_RX_ENA ; 
 int MAC_CMDCFG_SW_RESET ; 
 int MAC_CMDCFG_TX_ENA ; 
 int /*<<< orphan*/  command_config ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct altera_tse_private *priv)
{
	int counter;
	u32 dat;

	dat = FUNC0(priv->mac_dev, FUNC3(command_config));
	dat &= ~(MAC_CMDCFG_TX_ENA | MAC_CMDCFG_RX_ENA);
	dat |= MAC_CMDCFG_SW_RESET | MAC_CMDCFG_CNT_RESET;
	FUNC1(dat, priv->mac_dev, FUNC3(command_config));

	counter = 0;
	while (counter++ < ALTERA_TSE_SW_RESET_WATCHDOG_CNTR) {
		if (FUNC2(priv->mac_dev, FUNC3(command_config),
				     MAC_CMDCFG_SW_RESET))
			break;
		FUNC4(1);
	}

	if (counter >= ALTERA_TSE_SW_RESET_WATCHDOG_CNTR) {
		dat = FUNC0(priv->mac_dev, FUNC3(command_config));
		dat &= ~MAC_CMDCFG_SW_RESET;
		FUNC1(dat, priv->mac_dev, FUNC3(command_config));
		return -1;
	}
	return 0;
}