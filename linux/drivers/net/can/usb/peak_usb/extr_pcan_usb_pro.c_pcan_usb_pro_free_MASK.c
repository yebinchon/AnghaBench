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
struct peak_usb_device {int /*<<< orphan*/  next_siblings; int /*<<< orphan*/  prev_siblings; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct peak_usb_device*) ; 

__attribute__((used)) static void FUNC2(struct peak_usb_device *dev)
{
	/* last device: can free pcan_usb_pro_interface object now */
	if (!dev->prev_siblings && !dev->next_siblings)
		FUNC0(FUNC1(dev));
}