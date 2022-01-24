#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct usbnet {int /*<<< orphan*/  net; TYPE_2__* udev; struct ax88172a_private* driver_priv; } ;
struct ax88172a_private {TYPE_3__* mdio; } ;
struct TYPE_8__ {char* name; int /*<<< orphan*/  id; int /*<<< orphan*/ * write; int /*<<< orphan*/ * read; void* priv; } ;
struct TYPE_7__ {int devnum; TYPE_1__* bus; } ;
struct TYPE_6__ {int busnum; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 int /*<<< orphan*/  asix_mdio_bus_read ; 
 int /*<<< orphan*/  asix_mdio_bus_write ; 
 TYPE_3__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static int FUNC6(struct usbnet *dev)
{
	struct ax88172a_private *priv = dev->driver_priv;
	int ret;

	priv->mdio = FUNC0();
	if (!priv->mdio) {
		FUNC3(dev->net, "Could not allocate MDIO bus\n");
		return -ENOMEM;
	}

	priv->mdio->priv = (void *)dev;
	priv->mdio->read = &asix_mdio_bus_read;
	priv->mdio->write = &asix_mdio_bus_write;
	priv->mdio->name = "Asix MDIO Bus";
	/* mii bus name is usb-<usb bus number>-<usb device number> */
	FUNC5(priv->mdio->id, MII_BUS_ID_SIZE, "usb-%03d:%03d",
		 dev->udev->bus->busnum, dev->udev->devnum);

	ret = FUNC2(priv->mdio);
	if (ret) {
		FUNC3(dev->net, "Could not register MDIO bus\n");
		goto mfree;
	}

	FUNC4(dev->net, "registered mdio bus %s\n", priv->mdio->id);
	return 0;

mfree:
	FUNC1(priv->mdio);
	return ret;
}