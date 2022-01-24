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
struct usb_interface {int dummy; } ;
struct lan78xx_net {TYPE_1__* net; } ;
struct TYPE_2__ {int /*<<< orphan*/  phydev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lan78xx_net*) ; 
 int FUNC1 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct lan78xx_net* FUNC3 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC4(struct usb_interface *intf)
{
	struct lan78xx_net *dev = FUNC3(intf);

	FUNC0(dev);

	FUNC2(dev->net->phydev);

	return FUNC1(intf);
}