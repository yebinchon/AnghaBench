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
struct mac_driver {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  XGMAC_MAC_PAUSE_CTRL_REG ; 
 int /*<<< orphan*/  XGMAC_PAUSE_CTL_RX_B ; 
 int /*<<< orphan*/  XGMAC_PAUSE_CTL_TX_B ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mac_driver*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void *mac_drv, u32 *rx_en, u32 *tx_en)
{
	struct mac_driver *drv = (struct mac_driver *)mac_drv;
	u32 pause_ctrl;

	pause_ctrl = FUNC1(drv, XGMAC_MAC_PAUSE_CTRL_REG);
	*rx_en = FUNC0(pause_ctrl, XGMAC_PAUSE_CTL_RX_B);
	*tx_en = FUNC0(pause_ctrl, XGMAC_PAUSE_CTL_TX_B);
}