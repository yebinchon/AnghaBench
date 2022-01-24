#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct usbnet {TYPE_3__* net; TYPE_2__* udev; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_6__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEPROM_MAC_OFFSET ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  ifup ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usbnet*,int /*<<< orphan*/ ,TYPE_3__*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct usbnet *dev)
{
	const u8 *mac_addr;

	/* maybe the boot loader passed the MAC address in devicetree */
	mac_addr = FUNC5(dev->udev->dev.of_node);
	if (!FUNC0(mac_addr)) {
		FUNC2(dev->net->dev_addr, mac_addr);
		return;
	}

	/* try reading mac address from EEPROM */
	if (FUNC6(dev, EEPROM_MAC_OFFSET, ETH_ALEN,
			dev->net->dev_addr) == 0) {
		if (FUNC3(dev->net->dev_addr)) {
			/* eeprom values are valid so use them */
			FUNC4(dev, ifup, dev->net,
				  "MAC address read from EEPROM\n");
			return;
		}
	}

	/* no useful static MAC address found. generate a random one */
	FUNC1(dev->net);
	FUNC4(dev, ifup, dev->net, "MAC address set to eth_random_addr\n");
}