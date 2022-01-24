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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct gs_usb {int /*<<< orphan*/  rx_submitted; scalar_t__* canch; } ;

/* Variables and functions */
 unsigned int GS_MAX_INTF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct gs_usb*) ; 
 struct gs_usb* FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct usb_interface *intf)
{
	unsigned i;
	struct gs_usb *dev = FUNC3(intf);
	FUNC5(intf, NULL);

	if (!dev) {
		FUNC0(&intf->dev, "Disconnect (nodata)\n");
		return;
	}

	for (i = 0; i < GS_MAX_INTF; i++)
		if (dev->canch[i])
			FUNC1(dev->canch[i]);

	FUNC4(&dev->rx_submitted);
	FUNC2(dev);
}