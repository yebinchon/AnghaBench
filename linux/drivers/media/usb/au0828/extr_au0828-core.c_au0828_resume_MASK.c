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

/* Variables and functions */
 int /*<<< orphan*/  REG_600 ; 
 int /*<<< orphan*/  FUNC0 (struct au0828_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct au0828_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct au0828_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct au0828_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct au0828_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 struct au0828_dev* FUNC6 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC7(struct usb_interface *interface)
{
	struct au0828_dev *dev = FUNC6(interface);
	if (!dev)
		return 0;

	FUNC5("Resume\n");

	/* Power Up the bridge */
	FUNC4(dev, REG_600, 1 << 4);

	/* Bring up the GPIO's and supporting devices */
	FUNC1(dev);

	FUNC2(dev);
	FUNC3(dev);
	FUNC0(dev);

	/* FIXME: should resume also ATV/DTV */

	return 0;
}