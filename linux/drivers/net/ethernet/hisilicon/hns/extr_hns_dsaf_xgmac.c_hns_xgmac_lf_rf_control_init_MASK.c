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
 int /*<<< orphan*/  XGMAC_LF_RF_INSERT_M ; 
 int /*<<< orphan*/  XGMAC_LF_RF_INSERT_S ; 
 int /*<<< orphan*/  XGMAC_MAC_TX_LF_RF_CONTROL_REG ; 
 int /*<<< orphan*/  XGMAC_RF_TX_EN_B ; 
 int /*<<< orphan*/  XGMAC_UNIDIR_EN_B ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mac_driver*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mac_driver *mac_drv)
{
	u32 val = 0;

	FUNC0(val, XGMAC_UNIDIR_EN_B, 0);
	FUNC0(val, XGMAC_RF_TX_EN_B, 1);
	FUNC1(val, XGMAC_LF_RF_INSERT_M, XGMAC_LF_RF_INSERT_S, 0);
	FUNC2(mac_drv, XGMAC_MAC_TX_LF_RF_CONTROL_REG, val);
}