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
typedef  int u32 ;
struct alx_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALX_EFLD ; 
 int ALX_EFLD_E_EXIST ; 
 int ALX_EFLD_F_EXIST ; 
 int ALX_EFLD_START ; 
 int ALX_EFLD_STAT ; 
 int /*<<< orphan*/  ALX_SLD ; 
 int ALX_SLD_START ; 
 int ALX_SLD_STAT ; 
 int EIO ; 
 scalar_t__ FUNC0 (struct alx_hw*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct alx_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct alx_hw*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct alx_hw*,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct alx_hw *hw, u8 *addr)
{
	u32 val;

	/* try to get it from register first */
	if (FUNC0(hw, addr))
		return 0;

	/* try to load from efuse */
	if (!FUNC2(hw, ALX_SLD, ALX_SLD_STAT | ALX_SLD_START, &val))
		return -EIO;
	FUNC3(hw, ALX_SLD, val | ALX_SLD_START);
	if (!FUNC2(hw, ALX_SLD, ALX_SLD_START, NULL))
		return -EIO;
	if (FUNC0(hw, addr))
		return 0;

	/* try to load from flash/eeprom (if present) */
	val = FUNC1(hw, ALX_EFLD);
	if (val & (ALX_EFLD_F_EXIST | ALX_EFLD_E_EXIST)) {
		if (!FUNC2(hw, ALX_EFLD,
				  ALX_EFLD_STAT | ALX_EFLD_START, &val))
			return -EIO;
		FUNC3(hw, ALX_EFLD, val | ALX_EFLD_START);
		if (!FUNC2(hw, ALX_EFLD, ALX_EFLD_START, NULL))
			return -EIO;
		if (FUNC0(hw, addr))
			return 0;
	}

	return -EIO;
}