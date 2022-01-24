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
struct lan78xx_net {int /*<<< orphan*/  net; } ;

/* Variables and functions */
 int /*<<< orphan*/  E2P_CMD ; 
 int E2P_CMD_EPC_BUSY_ ; 
 int E2P_CMD_EPC_TIMEOUT_ ; 
 int EIO ; 
 scalar_t__ HZ ; 
 unsigned long jiffies ; 
 int FUNC0 (struct lan78xx_net*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct lan78xx_net *dev)
{
	unsigned long start_time = jiffies;
	u32 val;
	int ret;

	do {
		ret = FUNC0(dev, E2P_CMD, &val);
		if (FUNC3(ret < 0))
			return -EIO;

		if (!(val & E2P_CMD_EPC_BUSY_) ||
		    (val & E2P_CMD_EPC_TIMEOUT_))
			break;
		FUNC4(40, 100);
	} while (!FUNC2(jiffies, start_time + HZ));

	if (val & (E2P_CMD_EPC_TIMEOUT_ | E2P_CMD_EPC_BUSY_)) {
		FUNC1(dev->net, "EEPROM read operation timeout");
		return -EIO;
	}

	return 0;
}