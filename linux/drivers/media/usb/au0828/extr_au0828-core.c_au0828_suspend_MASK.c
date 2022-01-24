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
struct usb_interface {int dummy; } ;
struct au0828_dev {int dummy; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct au0828_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct au0828_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct au0828_dev*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct au0828_dev* FUNC4 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC5(struct usb_interface *interface,
				pm_message_t message)
{
	struct au0828_dev *dev = FUNC4(interface);

	if (!dev)
		return 0;

	FUNC3("Suspend\n");

	FUNC1(dev);
	FUNC2(dev);
	FUNC0(dev);

	/* FIXME: should suspend also ATV/DTV */

	return 0;
}