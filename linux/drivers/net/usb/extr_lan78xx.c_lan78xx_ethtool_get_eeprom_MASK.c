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
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int dummy; } ;
struct lan78xx_net {int /*<<< orphan*/  intf; } ;
struct ethtool_eeprom {int /*<<< orphan*/  len; int /*<<< orphan*/  offset; int /*<<< orphan*/  magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  LAN78XX_EEPROM_MAGIC ; 
 int FUNC0 (struct lan78xx_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct lan78xx_net* FUNC1 (struct net_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev,
				      struct ethtool_eeprom *ee, u8 *data)
{
	struct lan78xx_net *dev = FUNC1(netdev);
	int ret;

	ret = FUNC2(dev->intf);
	if (ret)
		return ret;

	ee->magic = LAN78XX_EEPROM_MAGIC;

	ret = FUNC0(dev, ee->offset, ee->len, data);

	FUNC3(dev->intf);

	return ret;
}