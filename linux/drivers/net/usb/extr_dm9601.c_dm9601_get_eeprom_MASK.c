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
struct usbnet {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int offset; int len; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct usbnet*,int,int /*<<< orphan*/ *) ; 
 struct usbnet* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *net,
			     struct ethtool_eeprom *eeprom, u8 * data)
{
	struct usbnet *dev = FUNC1(net);
	__le16 *ebuf = (__le16 *) data;
	int i;

	/* access is 16bit */
	if ((eeprom->offset % 2) || (eeprom->len % 2))
		return -EINVAL;

	for (i = 0; i < eeprom->len / 2; i++) {
		if (FUNC0(dev, eeprom->offset / 2 + i,
					&ebuf[i]) < 0)
			return -EINVAL;
	}
	return 0;
}