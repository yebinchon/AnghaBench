#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct ks8851_net {int rc_ccr; struct net_device* netdev; TYPE_2__* spidev; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int CCR_EEPROM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct ks8851_net *ks)
{
	struct net_device *dev = ks->netdev;
	const u8 *mac_addr;

	mac_addr = FUNC7(ks->spidev->dev.of_node);
	if (!FUNC0(mac_addr)) {
		FUNC2(dev->dev_addr, mac_addr);
		FUNC5(dev);
		return;
	}

	if (ks->rc_ccr & CCR_EEPROM) {
		FUNC4(dev);
		if (FUNC3(dev->dev_addr))
			return;

		FUNC6(ks->netdev, "invalid mac address read %pM\n",
				dev->dev_addr);
	}

	FUNC1(dev);
	FUNC5(dev);
}