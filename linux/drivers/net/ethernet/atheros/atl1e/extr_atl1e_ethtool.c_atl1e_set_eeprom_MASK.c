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
struct ethtool_eeprom {int magic; int offset; int /*<<< orphan*/  len; } ;
struct atl1e_hw {int vendor_id; int device_id; } ;
struct atl1e_adapter {struct atl1e_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_EEPROM_LEN ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct atl1e_hw*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct atl1e_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct atl1e_adapter* FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev,
			    struct ethtool_eeprom *eeprom, u8 *bytes)
{
	struct atl1e_adapter *adapter = FUNC5(netdev);
	struct atl1e_hw *hw = &adapter->hw;
	u32 *eeprom_buff;
	u32 *ptr;
	int first_dword, last_dword;
	int ret_val = 0;
	int i;

	if (eeprom->len == 0)
		return -EOPNOTSUPP;

	if (eeprom->magic != (hw->vendor_id | (hw->device_id << 16)))
		return -EINVAL;

	first_dword = eeprom->offset >> 2;
	last_dword = (eeprom->offset + eeprom->len - 1) >> 2;
	eeprom_buff = FUNC3(AT_EEPROM_LEN, GFP_KERNEL);
	if (eeprom_buff == NULL)
		return -ENOMEM;

	ptr = eeprom_buff;

	if (eeprom->offset & 3) {
		/* need read/modify/write of first changed EEPROM word */
		/* only the second byte of the word is being modified */
		if (!FUNC0(hw, first_dword * 4, &(eeprom_buff[0]))) {
			ret_val = -EIO;
			goto out;
		}
		ptr++;
	}
	if (((eeprom->offset + eeprom->len) & 3)) {
		/* need read/modify/write of last changed EEPROM word */
		/* only the first byte of the word is being modified */

		if (!FUNC0(hw, last_dword * 4,
				&(eeprom_buff[last_dword - first_dword]))) {
			ret_val = -EIO;
			goto out;
		}
	}

	/* Device's eeprom is always little-endian, word addressable */
	FUNC4(ptr, bytes, eeprom->len);

	for (i = 0; i < last_dword - first_dword + 1; i++) {
		if (!FUNC1(hw, ((first_dword + i) * 4),
				  eeprom_buff[i])) {
			ret_val = -EIO;
			goto out;
		}
	}
out:
	FUNC2(eeprom_buff);
	return ret_val;
}