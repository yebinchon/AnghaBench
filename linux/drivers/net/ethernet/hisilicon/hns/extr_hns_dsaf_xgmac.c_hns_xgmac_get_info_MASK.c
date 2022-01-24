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
typedef  int /*<<< orphan*/  u32 ;
struct mac_info {int port_en; int duplex; void* tx_pause_en; void* rx_pause_en; int /*<<< orphan*/  speed; int /*<<< orphan*/  tx_pause_time; scalar_t__ auto_neg; void* pad_and_crc_en; } ;
struct mac_driver {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_SPEED_10000 ; 
 int /*<<< orphan*/  XGMAC_CTL_TX_PAD_B ; 
 int /*<<< orphan*/  XGMAC_MAC_CONTROL_REG ; 
 int /*<<< orphan*/  XGMAC_MAC_PAUSE_CTRL_REG ; 
 int /*<<< orphan*/  XGMAC_MAC_PAUSE_TIME_REG ; 
 int /*<<< orphan*/  XGMAC_PAUSE_CTL_RX_B ; 
 int /*<<< orphan*/  XGMAC_PAUSE_CTL_TX_B ; 
 int /*<<< orphan*/  XGMAC_PORT_MODE_REG ; 
 int /*<<< orphan*/  XGMAC_PORT_MODE_RX_M ; 
 int /*<<< orphan*/  XGMAC_PORT_MODE_RX_S ; 
 int /*<<< orphan*/  XGMAC_PORT_MODE_TX_M ; 
 int /*<<< orphan*/  XGMAC_PORT_MODE_TX_S ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mac_driver*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *mac_drv, struct mac_info *mac_info)
{
	struct mac_driver *drv = (struct mac_driver *)mac_drv;
	u32 pause_time, pause_ctrl, port_mode, ctrl_val;

	ctrl_val = FUNC2(drv, XGMAC_MAC_CONTROL_REG);
	mac_info->pad_and_crc_en = FUNC0(ctrl_val, XGMAC_CTL_TX_PAD_B);
	mac_info->auto_neg = 0;

	pause_time = FUNC2(drv, XGMAC_MAC_PAUSE_TIME_REG);
	mac_info->tx_pause_time = pause_time;

	port_mode = FUNC2(drv, XGMAC_PORT_MODE_REG);
	mac_info->port_en = FUNC1(port_mode, XGMAC_PORT_MODE_TX_M,
					   XGMAC_PORT_MODE_TX_S) &&
				FUNC1(port_mode, XGMAC_PORT_MODE_RX_M,
					       XGMAC_PORT_MODE_RX_S);
	mac_info->duplex = 1;
	mac_info->speed = MAC_SPEED_10000;

	pause_ctrl = FUNC2(drv, XGMAC_MAC_PAUSE_CTRL_REG);
	mac_info->rx_pause_en = FUNC0(pause_ctrl, XGMAC_PAUSE_CTL_RX_B);
	mac_info->tx_pause_en = FUNC0(pause_ctrl, XGMAC_PAUSE_CTL_TX_B);
}