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
typedef  int /*<<< orphan*/  ushort ;

/* Variables and functions */
 scalar_t__ EEPROM_READ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 

__attribute__((used)) static ushort FUNC3(int ioaddr, int index)
{
	FUNC2(EEPROM_READ + index, ioaddr + 10);
	/* Pause for at least 162 us. for the read to take place.
	   Some chips seem to require much longer */
	FUNC1(2);
	return FUNC0(ioaddr + 12);
}