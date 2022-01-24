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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct igc_nvm_info {scalar_t__ word_size; } ;
struct igc_hw {struct igc_nvm_info nvm; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  IGC_EERD ; 
 int IGC_ERR_NVM ; 
 int /*<<< orphan*/  IGC_NVM_POLL_READ ; 
 scalar_t__ IGC_NVM_RW_ADDR_SHIFT ; 
 scalar_t__ IGC_NVM_RW_REG_DATA ; 
 scalar_t__ IGC_NVM_RW_REG_START ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct igc_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

s32 FUNC4(struct igc_hw *hw, u16 offset, u16 words, u16 *data)
{
	struct igc_nvm_info *nvm = &hw->nvm;
	u32 i, eerd = 0;
	s32 ret_val = 0;

	/* A check for invalid values:  offset too large, too many words,
	 * and not enough words.
	 */
	if (offset >= nvm->word_size || (words > (nvm->word_size - offset)) ||
	    words == 0) {
		FUNC0("nvm parameter(s) out of bounds\n");
		ret_val = -IGC_ERR_NVM;
		goto out;
	}

	for (i = 0; i < words; i++) {
		eerd = ((offset + i) << IGC_NVM_RW_ADDR_SHIFT) +
			IGC_NVM_RW_REG_START;

		FUNC3(IGC_EERD, eerd);
		ret_val = FUNC1(hw, IGC_NVM_POLL_READ);
		if (ret_val)
			break;

		data[i] = (FUNC2(IGC_EERD) >> IGC_NVM_RW_REG_DATA);
	}

out:
	return ret_val;
}