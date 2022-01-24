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
struct mac_driver {int /*<<< orphan*/  dev; } ;
typedef  enum mac_commom_mode { ____Placeholder_mac_commom_mode } mac_commom_mode ;

/* Variables and functions */
 int /*<<< orphan*/  HNS_XGMAC_NO_LF_RF_INSERT ; 
 int MAC_COMM_MODE_RX ; 
 int MAC_COMM_MODE_RX_AND_TX ; 
 int MAC_COMM_MODE_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mac_driver*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mac_driver*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mac_driver*,int) ; 

__attribute__((used)) static void FUNC4(void *mac_drv, enum mac_commom_mode mode)
{
	struct mac_driver *drv = (struct mac_driver *)mac_drv;

	FUNC1(drv, HNS_XGMAC_NO_LF_RF_INSERT);

	/*enable XGE rX/tX */
	if (mode == MAC_COMM_MODE_TX) {
		FUNC3(drv, 1);
	} else if (mode == MAC_COMM_MODE_RX) {
		FUNC2(drv, 1);
	} else if (mode == MAC_COMM_MODE_RX_AND_TX) {
		FUNC3(drv, 1);
		FUNC2(drv, 1);
	} else {
		FUNC0(drv->dev, "error mac mode:%d\n", mode);
	}
}