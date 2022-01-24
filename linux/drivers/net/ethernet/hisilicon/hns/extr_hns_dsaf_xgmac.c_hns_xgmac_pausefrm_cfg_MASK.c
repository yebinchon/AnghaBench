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
 int /*<<< orphan*/  FUNC0 (struct mac_driver*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mac_driver*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *mac_drv, u32 rx_en, u32 tx_en)
{
	struct mac_driver *drv = (struct mac_driver *)mac_drv;
	u32 origin = FUNC0(drv, XGMAC_MAC_PAUSE_CTRL_REG);

	FUNC1(origin, XGMAC_PAUSE_CTL_TX_B, !!tx_en);
	FUNC1(origin, XGMAC_PAUSE_CTL_RX_B, !!rx_en);
	FUNC2(drv, XGMAC_MAC_PAUSE_CTRL_REG, origin);
}