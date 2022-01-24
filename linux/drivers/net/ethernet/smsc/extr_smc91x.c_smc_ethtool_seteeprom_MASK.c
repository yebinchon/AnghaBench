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
typedef  int u8 ;
typedef  int u16 ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int len; int offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct net_device*,char*,int,int,...) ; 
 int FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*,int,int) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev,
		struct ethtool_eeprom *eeprom, u8 *data)
{
	int i;
	int imax;

	FUNC0(1, dev, "Writing %d bytes to %d(0x%x)\n",
	    eeprom->len, eeprom->offset, eeprom->offset);
	imax = FUNC1(dev);
	for (i = 0; i < eeprom->len; i += 2) {
		int ret;
		u16 wbuf;
		int offset = i + eeprom->offset;
		if (offset > imax)
			break;
		wbuf = (data[i] << 8) | data[i + 1];
		FUNC0(2, dev, "Writing 0x%x to 0x%x\n", wbuf, offset >> 1);
		ret = FUNC2(dev, offset >> 1, wbuf);
		if (ret != 0)
			return ret;
	}
	return 0;
}