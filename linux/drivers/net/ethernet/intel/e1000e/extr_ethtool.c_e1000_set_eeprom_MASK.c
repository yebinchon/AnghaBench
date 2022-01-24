#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct TYPE_8__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_4__ dev; } ;
struct ethtool_eeprom {int magic; int offset; int /*<<< orphan*/  len; } ;
struct TYPE_7__ {scalar_t__ type; } ;
struct TYPE_6__ {int word_size; } ;
struct e1000_hw {TYPE_3__ mac; TYPE_2__ nvm; } ;
struct e1000_adapter {int flags; TYPE_1__* pdev; struct e1000_hw hw; } ;
struct TYPE_5__ {int vendor; int device; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int FLAG_READ_ONLY_NVM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NVM_CHECKSUM_REG ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 scalar_t__ e1000_82573 ; 
 scalar_t__ e1000_82574 ; 
 scalar_t__ e1000_82583 ; 
 int FUNC1 (struct e1000_hw*,int,int,int*) ; 
 int FUNC2 (struct e1000_hw*,int,int,int*) ; 
 int FUNC3 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct e1000_adapter* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct net_device *netdev,
			    struct ethtool_eeprom *eeprom, u8 *bytes)
{
	struct e1000_adapter *adapter = FUNC8(netdev);
	struct e1000_hw *hw = &adapter->hw;
	u16 *eeprom_buff;
	void *ptr;
	int max_len;
	int first_word;
	int last_word;
	int ret_val = 0;
	u16 i;

	if (eeprom->len == 0)
		return -EOPNOTSUPP;

	if (eeprom->magic !=
	    (adapter->pdev->vendor | (adapter->pdev->device << 16)))
		return -EFAULT;

	if (adapter->flags & FLAG_READ_ONLY_NVM)
		return -EINVAL;

	max_len = hw->nvm.word_size * 2;

	first_word = eeprom->offset >> 1;
	last_word = (eeprom->offset + eeprom->len - 1) >> 1;
	eeprom_buff = FUNC5(max_len, GFP_KERNEL);
	if (!eeprom_buff)
		return -ENOMEM;

	ptr = (void *)eeprom_buff;

	FUNC9(netdev->dev.parent);

	if (eeprom->offset & 1) {
		/* need read/modify/write of first changed EEPROM word */
		/* only the second byte of the word is being modified */
		ret_val = FUNC1(hw, first_word, 1, &eeprom_buff[0]);
		ptr++;
	}
	if (((eeprom->offset + eeprom->len) & 1) && (!ret_val))
		/* need read/modify/write of last changed EEPROM word */
		/* only the first byte of the word is being modified */
		ret_val = FUNC1(hw, last_word, 1,
					 &eeprom_buff[last_word - first_word]);

	if (ret_val)
		goto out;

	/* Device's eeprom is always little-endian, word addressable */
	for (i = 0; i < last_word - first_word + 1; i++)
		FUNC6(&eeprom_buff[i]);

	FUNC7(ptr, bytes, eeprom->len);

	for (i = 0; i < last_word - first_word + 1; i++)
		FUNC0(&eeprom_buff[i]);

	ret_val = FUNC2(hw, first_word,
				  last_word - first_word + 1, eeprom_buff);

	if (ret_val)
		goto out;

	/* Update the checksum over the first part of the EEPROM if needed
	 * and flush shadow RAM for applicable controllers
	 */
	if ((first_word <= NVM_CHECKSUM_REG) ||
	    (hw->mac.type == e1000_82583) ||
	    (hw->mac.type == e1000_82574) ||
	    (hw->mac.type == e1000_82573))
		ret_val = FUNC3(hw);

out:
	FUNC10(netdev->dev.parent);
	FUNC4(eeprom_buff);
	return ret_val;
}