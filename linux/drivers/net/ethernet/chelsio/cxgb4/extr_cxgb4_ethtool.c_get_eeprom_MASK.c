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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int offset; int len; int /*<<< orphan*/  magic; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEPROMSIZE ; 
 int /*<<< orphan*/  EEPROM_MAGIC ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct adapter*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct adapter* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, struct ethtool_eeprom *e,
		      u8 *data)
{
	int i, err = 0;
	struct adapter *adapter = FUNC4(dev);
	u8 *buf = FUNC2(EEPROMSIZE, GFP_KERNEL);

	if (!buf)
		return -ENOMEM;

	e->magic = EEPROM_MAGIC;
	for (i = e->offset & ~3; !err && i < e->offset + e->len; i += 4)
		err = FUNC0(adapter, i, (u32 *)&buf[i]);

	if (!err)
		FUNC3(data, buf + e->offset, e->len);
	FUNC1(buf);
	return err;
}