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
struct usbnet {int /*<<< orphan*/  flags; TYPE_1__* driver_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_rx_mode ) (struct usbnet*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_SET_RX_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*) ; 

__attribute__((used)) static void FUNC2(struct usbnet *dev)
{
	if (dev->driver_info->set_rx_mode)
		(dev->driver_info->set_rx_mode)(dev);

	FUNC0(EVENT_SET_RX_MODE, &dev->flags);
}