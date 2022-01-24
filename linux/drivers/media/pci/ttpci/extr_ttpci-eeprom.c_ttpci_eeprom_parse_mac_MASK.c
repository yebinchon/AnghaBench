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
struct i2c_adapter {int dummy; } ;
typedef  int /*<<< orphan*/  encodedMAC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct i2c_adapter*,int /*<<< orphan*/ *) ; 

int FUNC5(struct i2c_adapter *adapter, u8 *proposed_mac)
{
	int ret;
	u8 encodedMAC[20];
	u8 decodedMAC[6];

	ret = FUNC4(adapter, encodedMAC);

	if (ret != 0) {		/* Will only be -ENODEV */
		FUNC0("Couldn't read from EEPROM: not there?\n");
		FUNC1(proposed_mac);
		return ret;
	}

	ret = FUNC2(decodedMAC, encodedMAC);
	if( ret != 0 ) {
		FUNC0("adapter failed MAC signature check\n");
		FUNC0("encoded MAC from EEPROM was %*phC",
			(int)sizeof(encodedMAC), &encodedMAC);
		FUNC1(proposed_mac);
		return ret;
	}

	FUNC3(proposed_mac, decodedMAC, 6);
	FUNC0("adapter has MAC addr = %pM\n", decodedMAC);
	return 0;
}