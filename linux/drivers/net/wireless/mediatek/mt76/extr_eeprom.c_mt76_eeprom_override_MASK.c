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
typedef  int /*<<< orphan*/  u8 ;
struct mt76_dev {int /*<<< orphan*/  macaddr; TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct device_node*) ; 

void
FUNC6(struct mt76_dev *dev)
{
#ifdef CONFIG_OF
	struct device_node *np = dev->dev->of_node;
	const u8 *mac;

	if (!np)
		return;

	mac = of_get_mac_address(np);
	if (!IS_ERR(mac))
		ether_addr_copy(dev->macaddr, mac);
#endif

	if (!FUNC4(dev->macaddr)) {
		FUNC2(dev->macaddr);
		FUNC1(dev->dev,
			 "Invalid MAC address, using random address %pM\n",
			 dev->macaddr);
	}
}