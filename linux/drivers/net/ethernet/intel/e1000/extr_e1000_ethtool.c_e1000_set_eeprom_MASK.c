#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int magic; int offset; int /*<<< orphan*/  len; } ;
struct TYPE_2__ {int word_size; } ;
struct e1000_hw {int vendor_id; int device_id; TYPE_1__ eeprom; } ;
struct e1000_adapter {struct e1000_hw hw; } ;

/* Variables and functions */
 int EEPROM_CHECKSUM_REG ; 
 int EFAULT ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct e1000_hw*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*) ; 
 int FUNC3 (struct e1000_hw*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct e1000_adapter* FUNC8 (struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct net_device *netdev,
			    struct ethtool_eeprom *eeprom, u8 *bytes)
{
	struct e1000_adapter *adapter = FUNC8(netdev);
	struct e1000_hw *hw = &adapter->hw;
	u16 *eeprom_buff;
	void *ptr;
	int max_len, first_word, last_word, ret_val = 0;
	u16 i;

	if (eeprom->len == 0)
		return -EOPNOTSUPP;

	if (eeprom->magic != (hw->vendor_id | (hw->device_id << 16)))
		return -EFAULT;

	max_len = hw->eeprom.word_size * 2;

	first_word = eeprom->offset >> 1;
	last_word = (eeprom->offset + eeprom->len - 1) >> 1;
	eeprom_buff = FUNC5(max_len, GFP_KERNEL);
	if (!eeprom_buff)
		return -ENOMEM;

	ptr = (void *)eeprom_buff;

	if (eeprom->offset & 1) {
		/* need read/modify/write of first changed EEPROM word
		 * only the second byte of the word is being modified
		 */
		ret_val = FUNC1(hw, first_word, 1,
					    &eeprom_buff[0]);
		ptr++;
	}
	if (((eeprom->offset + eeprom->len) & 1) && (ret_val == 0)) {
		/* need read/modify/write of last changed EEPROM word
		 * only the first byte of the word is being modified
		 */
		ret_val = FUNC1(hw, last_word, 1,
					    &eeprom_buff[last_word - first_word]);
	}

	/* Device's eeprom is always little-endian, word addressable */
	for (i = 0; i < last_word - first_word + 1; i++)
		FUNC6(&eeprom_buff[i]);

	FUNC7(ptr, bytes, eeprom->len);

	for (i = 0; i < last_word - first_word + 1; i++)
		eeprom_buff[i] = FUNC0(eeprom_buff[i]);

	ret_val = FUNC3(hw, first_word,
				     last_word - first_word + 1, eeprom_buff);

	/* Update the checksum over the first part of the EEPROM if needed */
	if ((ret_val == 0) && (first_word <= EEPROM_CHECKSUM_REG))
		FUNC2(hw);

	FUNC4(eeprom_buff);
	return ret_val;
}