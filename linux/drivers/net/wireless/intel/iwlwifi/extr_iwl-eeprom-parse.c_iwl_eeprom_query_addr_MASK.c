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
typedef  size_t u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/  const*,size_t,size_t) ; 

__attribute__((used)) static const u8 *FUNC2(const u8 *eeprom, size_t eeprom_size,
				       u32 offset)
{
	u32 address = FUNC1(eeprom, eeprom_size, offset);

	if (FUNC0(address >= eeprom_size))
		return NULL;

	return &eeprom[address];
}