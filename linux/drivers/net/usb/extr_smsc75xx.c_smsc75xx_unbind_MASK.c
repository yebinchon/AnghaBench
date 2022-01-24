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
struct usbnet {scalar_t__* data; int /*<<< orphan*/  net; } ;
struct usb_interface {int dummy; } ;
struct smsc75xx_priv {int /*<<< orphan*/  set_multicast; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ifdown ; 
 int /*<<< orphan*/  FUNC1 (struct smsc75xx_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(struct usbnet *dev, struct usb_interface *intf)
{
	struct smsc75xx_priv *pdata = (struct smsc75xx_priv *)(dev->data[0]);
	if (pdata) {
		FUNC0(&pdata->set_multicast);
		FUNC2(dev, ifdown, dev->net, "free pdata\n");
		FUNC1(pdata);
		pdata = NULL;
		dev->data[0] = 0;
	}
}