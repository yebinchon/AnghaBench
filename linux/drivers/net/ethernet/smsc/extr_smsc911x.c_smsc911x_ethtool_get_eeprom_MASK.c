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
struct smsc911x_data {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int len; size_t offset; } ;

/* Variables and functions */
 int SMSC911X_EEPROM_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int,int) ; 
 struct smsc911x_data* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct smsc911x_data*) ; 
 int FUNC4 (struct smsc911x_data*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
				       struct ethtool_eeprom *eeprom, u8 *data)
{
	struct smsc911x_data *pdata = FUNC2(dev);
	u8 eeprom_data[SMSC911X_EEPROM_SIZE];
	int len;
	int i;

	FUNC3(pdata);

	len = FUNC1(eeprom->len, SMSC911X_EEPROM_SIZE);
	for (i = 0; i < len; i++) {
		int ret = FUNC4(pdata, i, eeprom_data);
		if (ret < 0) {
			eeprom->len = 0;
			return ret;
		}
	}

	FUNC0(data, &eeprom_data[eeprom->offset], len);
	eeprom->len = len;
	return 0;
}