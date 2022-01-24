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
typedef  int u32 ;
struct lan743x_adapter {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  E2P_CMD ; 
 int E2P_CMD_EPC_BUSY_ ; 
 int E2P_CMD_EPC_TIMEOUT_ ; 
 int EIO ; 
 scalar_t__ HZ ; 
 int /*<<< orphan*/  drv ; 
 unsigned long jiffies ; 
 int FUNC0 (struct lan743x_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lan743x_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct lan743x_adapter *adapter)
{
	unsigned long start_time = jiffies;
	u32 val;

	do {
		val = FUNC0(adapter, E2P_CMD);

		if (!(val & E2P_CMD_EPC_BUSY_) ||
		    (val & E2P_CMD_EPC_TIMEOUT_))
			break;
		FUNC3(40, 100);
	} while (!FUNC2(jiffies, start_time + HZ));

	if (val & (E2P_CMD_EPC_TIMEOUT_ | E2P_CMD_EPC_BUSY_)) {
		FUNC1(adapter, drv, adapter->netdev,
			   "EEPROM read operation timeout\n");
		return -EIO;
	}

	return 0;
}