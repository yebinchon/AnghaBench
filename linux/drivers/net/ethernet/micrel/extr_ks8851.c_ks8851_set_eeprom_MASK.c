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
struct ks8851_net {int /*<<< orphan*/  eeprom; } ;
struct ethtool_eeprom {int offset; int len; scalar_t__ magic; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 scalar_t__ KS_EEPROM_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC3 (struct ks8851_net*) ; 
 int /*<<< orphan*/  FUNC4 (struct ks8851_net*) ; 
 struct ks8851_net* FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev,
			     struct ethtool_eeprom *ee, u8 *data)
{
	struct ks8851_net *ks = FUNC5(dev);
	int offset = ee->offset;
	int len = ee->len;
	u16 tmp;

	/* currently only support byte writing */
	if (len != 1)
		return -EINVAL;

	if (ee->magic != KS_EEPROM_MAGIC)
		return -EINVAL;

	if (FUNC3(ks))
		return -ENOENT;

	FUNC1(&ks->eeprom, true);

	/* ethtool currently only supports writing bytes, which means
	 * we have to read/modify/write our 16bit EEPROMs */

	FUNC0(&ks->eeprom, offset/2, &tmp);

	if (offset & 1) {
		tmp &= 0xff;
		tmp |= *data << 8;
	} else {
		tmp &= 0xff00;
		tmp |= *data;
	}

	FUNC2(&ks->eeprom, offset/2, tmp);
	FUNC1(&ks->eeprom, false);

	FUNC4(ks);

	return 0;
}