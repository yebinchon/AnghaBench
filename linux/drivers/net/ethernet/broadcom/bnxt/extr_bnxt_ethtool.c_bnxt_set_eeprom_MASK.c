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
struct ethtool_eeprom {int magic; int offset; int /*<<< orphan*/  len; } ;
struct bnxt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnxt*) ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct net_device*,int) ; 
 int FUNC3 (struct net_device*,int,int,int,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 struct bnxt* FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev,
			   struct ethtool_eeprom *eeprom,
			   u8 *data)
{
	struct bnxt *bp = FUNC5(dev);
	u8 index, dir_op;
	u16 type, ext, ordinal, attr;

	if (!FUNC0(bp)) {
		FUNC4(dev, "NVM write not supported from a virtual function\n");
		return -EINVAL;
	}

	type = eeprom->magic >> 16;

	if (type == 0xffff) { /* special value for directory operations */
		index = eeprom->magic & 0xff;
		dir_op = eeprom->magic >> 8;
		if (index == 0)
			return -EINVAL;
		switch (dir_op) {
		case 0x0e: /* erase */
			if (eeprom->offset != ~eeprom->magic)
				return -EINVAL;
			return FUNC2(dev, index - 1);
		default:
			return -EINVAL;
		}
	}

	/* Create or re-write an NVM item: */
	if (FUNC1(type) == true)
		return -EOPNOTSUPP;
	ext = eeprom->magic & 0xffff;
	ordinal = eeprom->offset >> 16;
	attr = eeprom->offset & 0xffff;

	return FUNC3(dev, type, ordinal, ext, attr, data,
				eeprom->len);
}