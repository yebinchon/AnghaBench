#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int (* read_buffer ) (struct ixgbe_hw*,int,int,int*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {int vendor_id; int device_id; TYPE_2__ eeprom; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;
struct ethtool_eeprom {int magic; int offset; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ixgbe_adapter* FUNC4 (struct net_device*) ; 
 int FUNC5 (struct ixgbe_hw*,int,int,int*) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev,
			    struct ethtool_eeprom *eeprom, u8 *bytes)
{
	struct ixgbe_adapter *adapter = FUNC4(netdev);
	struct ixgbe_hw *hw = &adapter->hw;
	u16 *eeprom_buff;
	int first_word, last_word, eeprom_len;
	int ret_val = 0;
	u16 i;

	if (eeprom->len == 0)
		return -EINVAL;

	eeprom->magic = hw->vendor_id | (hw->device_id << 16);

	first_word = eeprom->offset >> 1;
	last_word = (eeprom->offset + eeprom->len - 1) >> 1;
	eeprom_len = last_word - first_word + 1;

	eeprom_buff = FUNC1(eeprom_len, sizeof(u16), GFP_KERNEL);
	if (!eeprom_buff)
		return -ENOMEM;

	ret_val = hw->eeprom.ops.read_buffer(hw, first_word, eeprom_len,
					     eeprom_buff);

	/* Device's eeprom is always little-endian, word addressable */
	for (i = 0; i < eeprom_len; i++)
		FUNC2(&eeprom_buff[i]);

	FUNC3(bytes, (u8 *)eeprom_buff + (eeprom->offset & 1), eeprom->len);
	FUNC0(eeprom_buff);

	return ret_val;
}