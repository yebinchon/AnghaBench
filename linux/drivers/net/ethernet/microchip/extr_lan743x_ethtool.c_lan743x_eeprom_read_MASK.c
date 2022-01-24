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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct lan743x_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  E2P_CMD ; 
 scalar_t__ E2P_CMD_EPC_ADDR_MASK_ ; 
 scalar_t__ E2P_CMD_EPC_BUSY_ ; 
 scalar_t__ E2P_CMD_EPC_CMD_READ_ ; 
 int /*<<< orphan*/  E2P_DATA ; 
 int EINVAL ; 
 scalar_t__ MAX_EEPROM_SIZE ; 
 scalar_t__ FUNC0 (struct lan743x_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lan743x_adapter*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (struct lan743x_adapter*) ; 
 int FUNC3 (struct lan743x_adapter*) ; 

__attribute__((used)) static int FUNC4(struct lan743x_adapter *adapter,
			       u32 offset, u32 length, u8 *data)
{
	int retval;
	u32 val;
	int i;

	if (offset + length > MAX_EEPROM_SIZE)
		return -EINVAL;

	retval = FUNC2(adapter);
	if (retval)
		return retval;

	for (i = 0; i < length; i++) {
		val = E2P_CMD_EPC_BUSY_ | E2P_CMD_EPC_CMD_READ_;
		val |= (offset & E2P_CMD_EPC_ADDR_MASK_);
		FUNC1(adapter, E2P_CMD, val);

		retval = FUNC3(adapter);
		if (retval < 0)
			return retval;

		val = FUNC0(adapter, E2P_DATA);
		data[i] = val & 0xFF;
		offset++;
	}

	return 0;
}