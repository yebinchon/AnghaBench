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
struct ethtool_eeprom {int offset; int len; int /*<<< orphan*/  magic; } ;
struct board_info {int flags; } ;

/* Variables and functions */
 int DM9000_PLATF_NO_EEPROM ; 
 int /*<<< orphan*/  DM_EEPROM_MAGIC ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct board_info*,int,int /*<<< orphan*/ *) ; 
 struct board_info* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev,
			     struct ethtool_eeprom *ee, u8 *data)
{
	struct board_info *dm = FUNC1(dev);
	int offset = ee->offset;
	int len = ee->len;
	int i;

	/* EEPROM access is aligned to two bytes */

	if ((len & 1) != 0 || (offset & 1) != 0)
		return -EINVAL;

	if (dm->flags & DM9000_PLATF_NO_EEPROM)
		return -ENOENT;

	ee->magic = DM_EEPROM_MAGIC;

	for (i = 0; i < len; i += 2)
		FUNC0(dm, (offset + i) / 2, data + i);

	return 0;
}