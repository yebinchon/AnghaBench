#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct mac_driver {int /*<<< orphan*/  mac_id; int /*<<< orphan*/  dev; } ;
struct dsaf_device {TYPE_1__* misc_op; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* xge_srst ) (struct dsaf_device*,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_COMM_MODE_RX_AND_TX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mac_driver*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mac_driver*) ; 
 int /*<<< orphan*/  FUNC4 (struct mac_driver*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct dsaf_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct dsaf_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(void *mac_drv)
{
	struct mac_driver *drv = (struct mac_driver *)mac_drv;
	struct dsaf_device *dsaf_dev
		= (struct dsaf_device *)FUNC0(drv->dev);
	u32 port = drv->mac_id;

	dsaf_dev->misc_op->xge_srst(dsaf_dev, port, 0);
	FUNC5(100);
	dsaf_dev->misc_op->xge_srst(dsaf_dev, port, 1);

	FUNC5(100);
	FUNC3(drv);
	FUNC2(drv, 0);

	FUNC4(drv, 0x0, 0x0);

	FUNC1(mac_drv, MAC_COMM_MODE_RX_AND_TX);
}