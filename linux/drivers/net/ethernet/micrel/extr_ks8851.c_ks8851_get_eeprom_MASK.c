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
struct ks8851_net {int /*<<< orphan*/  eeprom; } ;
struct ethtool_eeprom {int offset; int len; int /*<<< orphan*/  magic; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  KS_EEPROM_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (struct ks8851_net*) ; 
 int /*<<< orphan*/  FUNC2 (struct ks8851_net*) ; 
 struct ks8851_net* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
			     struct ethtool_eeprom *ee, u8 *data)
{
	struct ks8851_net *ks = FUNC3(dev);
	int offset = ee->offset;
	int len = ee->len;

	/* must be 2 byte aligned */
	if (len & 1 || offset & 1)
		return -EINVAL;

	if (FUNC1(ks))
		return -ENOENT;

	ee->magic = KS_EEPROM_MAGIC;

	FUNC0(&ks->eeprom, offset/2, (__le16 *)data, len/2);
	FUNC2(ks);

	return 0;
}