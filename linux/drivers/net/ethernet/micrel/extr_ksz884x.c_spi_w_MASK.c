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
typedef  int u16 ;
struct ksz_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEPROM_DATA_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct ksz_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ksz_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ksz_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ksz_hw *hw, u16 data)
{
	int i;

	for (i = 15; i >= 0; i--) {
		(data & (0x01 << i)) ? FUNC2(hw, EEPROM_DATA_OUT) :
			FUNC0(hw, EEPROM_DATA_OUT);
		FUNC1(hw);
	}
}