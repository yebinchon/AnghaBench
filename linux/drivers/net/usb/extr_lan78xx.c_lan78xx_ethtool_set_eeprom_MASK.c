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
typedef  scalar_t__ u8 ;
struct net_device {int dummy; } ;
struct lan78xx_net {int /*<<< orphan*/  intf; } ;
struct ethtool_eeprom {scalar_t__ magic; int len; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 scalar_t__ LAN78XX_EEPROM_MAGIC ; 
 scalar_t__ LAN78XX_OTP_MAGIC ; 
 scalar_t__ OTP_INDICATOR_1 ; 
 int FUNC0 (struct lan78xx_net*,int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int FUNC1 (struct lan78xx_net*,int /*<<< orphan*/ ,int,scalar_t__*) ; 
 struct lan78xx_net* FUNC2 (struct net_device*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev,
				      struct ethtool_eeprom *ee, u8 *data)
{
	struct lan78xx_net *dev = FUNC2(netdev);
	int ret;

	ret = FUNC3(dev->intf);
	if (ret)
		return ret;

	/* Invalid EEPROM_INDICATOR at offset zero will result in a failure
	 * to load data from EEPROM
	 */
	if (ee->magic == LAN78XX_EEPROM_MAGIC)
		ret = FUNC0(dev, ee->offset, ee->len, data);
	else if ((ee->magic == LAN78XX_OTP_MAGIC) &&
		 (ee->offset == 0) &&
		 (ee->len == 512) &&
		 (data[0] == OTP_INDICATOR_1))
		ret = FUNC1(dev, ee->offset, ee->len, data);

	FUNC4(dev->intf);

	return ret;
}