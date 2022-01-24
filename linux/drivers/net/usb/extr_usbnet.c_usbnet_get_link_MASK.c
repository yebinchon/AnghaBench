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
typedef  int u32 ;
struct TYPE_4__ {scalar_t__ mdio_read; } ;
struct usbnet {TYPE_2__ mii; TYPE_1__* driver_info; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ (* check_connect ) (struct usbnet*) ;} ;

/* Variables and functions */
 int FUNC0 (struct net_device*) ; 
 int FUNC1 (TYPE_2__*) ; 
 struct usbnet* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct usbnet*) ; 

u32 FUNC4 (struct net_device *net)
{
	struct usbnet *dev = FUNC2(net);

	/* If a check_connect is defined, return its result */
	if (dev->driver_info->check_connect)
		return dev->driver_info->check_connect (dev) == 0;

	/* if the device has mii operations, use those */
	if (dev->mii.mdio_read)
		return FUNC1(&dev->mii);

	/* Otherwise, dtrt for drivers calling netif_carrier_{on,off} */
	return FUNC0(net);
}