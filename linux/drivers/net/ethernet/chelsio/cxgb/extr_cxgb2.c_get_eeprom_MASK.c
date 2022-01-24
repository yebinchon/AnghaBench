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
struct net_device {struct adapter* ml_priv; } ;
struct ethtool_eeprom {int offset; int len; int /*<<< orphan*/  magic; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*) ; 
 int EEPROM_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, struct ethtool_eeprom *e,
		      u8 *data)
{
	int i;
	u8 buf[EEPROM_SIZE] __attribute__((aligned(4)));
	struct adapter *adapter = dev->ml_priv;

	e->magic = FUNC0(adapter);
	for (i = e->offset & ~3; i < e->offset + e->len; i += sizeof(u32))
		FUNC2(adapter, i, (__le32 *)&buf[i]);
	FUNC1(data, buf + e->offset, e->len);
	return 0;
}