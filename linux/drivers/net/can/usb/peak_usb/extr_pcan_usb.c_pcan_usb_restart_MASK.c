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
struct timer_list {int dummy; } ;
struct peak_usb_device {int dummy; } ;
struct pcan_usb {struct peak_usb_device dev; } ;

/* Variables and functions */
 struct pcan_usb* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct pcan_usb* pdev ; 
 int /*<<< orphan*/  FUNC1 (struct peak_usb_device*) ; 
 int /*<<< orphan*/  restart_timer ; 

__attribute__((used)) static void FUNC2(struct timer_list *t)
{
	struct pcan_usb *pdev = FUNC0(pdev, t, restart_timer);
	struct peak_usb_device *dev = &pdev->dev;

	/* notify candev and netdev */
	FUNC1(dev);
}