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
struct smsc9420_pdata {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int len; size_t offset; int /*<<< orphan*/  magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMSC9420_EEPROM_MAGIC ; 
 int SMSC9420_EEPROM_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int,int) ; 
 struct smsc9420_pdata* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct smsc9420_pdata*) ; 
 int FUNC4 (struct smsc9420_pdata*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
				       struct ethtool_eeprom *eeprom, u8 *data)
{
	struct smsc9420_pdata *pd = FUNC2(dev);
	u8 eeprom_data[SMSC9420_EEPROM_SIZE];
	int len, i;

	FUNC3(pd);

	len = FUNC1(eeprom->len, SMSC9420_EEPROM_SIZE);
	for (i = 0; i < len; i++) {
		int ret = FUNC4(pd, i, eeprom_data);
		if (ret < 0) {
			eeprom->len = 0;
			return ret;
		}
	}

	FUNC0(data, &eeprom_data[eeprom->offset], len);
	eeprom->magic = SMSC9420_EEPROM_MAGIC;
	eeprom->len = len;
	return 0;
}