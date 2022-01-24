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
struct lan78xx_priv {int /*<<< orphan*/  set_vlan; int /*<<< orphan*/  set_multicast; } ;
struct lan78xx_net {scalar_t__* data; int /*<<< orphan*/  net; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ifdown ; 
 int /*<<< orphan*/  FUNC1 (struct lan78xx_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct lan78xx_net*) ; 
 int /*<<< orphan*/  FUNC3 (struct lan78xx_net*) ; 
 int /*<<< orphan*/  FUNC4 (struct lan78xx_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC5(struct lan78xx_net *dev, struct usb_interface *intf)
{
	struct lan78xx_priv *pdata = (struct lan78xx_priv *)(dev->data[0]);

	FUNC2(dev);

	FUNC3(dev);

	if (pdata) {
		FUNC0(&pdata->set_multicast);
		FUNC0(&pdata->set_vlan);
		FUNC4(dev, ifdown, dev->net, "free pdata");
		FUNC1(pdata);
		pdata = NULL;
		dev->data[0] = 0;
	}
}