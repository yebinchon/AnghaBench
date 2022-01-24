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
typedef  int /*<<< orphan*/  u32 ;
struct mac_driver {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GMAC_TRANSMIT_CONTROL_REG ; 
 int /*<<< orphan*/  GMAC_TX_CRC_ADD_B ; 
 int /*<<< orphan*/  GMAC_TX_PAD_EN_B ; 
 int /*<<< orphan*/  FUNC0 (struct mac_driver*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mac_driver*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *mac_drv, u8 newval)
{
	u32 tx_ctrl;
	struct mac_driver *drv = (struct mac_driver *)mac_drv;

	tx_ctrl = FUNC0(drv, GMAC_TRANSMIT_CONTROL_REG);
	FUNC1(tx_ctrl, GMAC_TX_PAD_EN_B, !!newval);
	FUNC1(tx_ctrl, GMAC_TX_CRC_ADD_B, !!newval);
	FUNC2(drv, GMAC_TRANSMIT_CONTROL_REG, tx_ctrl);
}