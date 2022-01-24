#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct mac_driver {TYPE_2__* mac_cb; int /*<<< orphan*/  mac_id; int /*<<< orphan*/  dev; } ;
struct dsaf_device {TYPE_1__* misc_op; } ;
struct TYPE_4__ {scalar_t__ mac_type; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* ge_srst ) (struct dsaf_device*,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GMAC_MODE_CHANGE_EB_B ; 
 int /*<<< orphan*/  GMAC_MODE_CHANGE_EN_REG ; 
 int /*<<< orphan*/  GMAC_TX_WATER_LINE_MASK ; 
 int /*<<< orphan*/  GMAC_TX_WATER_LINE_REG ; 
 int /*<<< orphan*/  GMAC_TX_WATER_LINE_SHIFT ; 
 scalar_t__ HNAE_PORT_DEBUG ; 
 int /*<<< orphan*/  MAC_COMM_MODE_RX_AND_TX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mac_driver*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mac_driver*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct dsaf_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct dsaf_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10(void *mac_drv)
{
	u32 port;
	struct mac_driver *drv = (struct mac_driver *)mac_drv;
	struct dsaf_device *dsaf_dev
		= (struct dsaf_device *)FUNC0(drv->dev);

	port = drv->mac_id;

	dsaf_dev->misc_op->ge_srst(dsaf_dev, port, 0);
	FUNC7(10);
	dsaf_dev->misc_op->ge_srst(dsaf_dev, port, 1);
	FUNC7(10);
	FUNC4(mac_drv, MAC_COMM_MODE_RX_AND_TX);
	FUNC6(mac_drv);
	if (drv->mac_cb->mac_type == HNAE_PORT_DEBUG)
		FUNC5(mac_drv, 0);

	FUNC3(mac_drv, 1);

	FUNC1(drv, GMAC_MODE_CHANGE_EN_REG,
			 GMAC_MODE_CHANGE_EB_B, 1);

	/* reduce gmac tx water line to avoid gmac hang-up
	 * in speed 100M and duplex half.
	 */
	FUNC2(drv, GMAC_TX_WATER_LINE_REG, GMAC_TX_WATER_LINE_MASK,
			   GMAC_TX_WATER_LINE_SHIFT, 8);
}