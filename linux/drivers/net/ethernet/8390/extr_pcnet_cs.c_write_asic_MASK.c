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

/* Variables and functions */
 unsigned int DLINK_EEPROM ; 
 short EE_ADOT ; 
 short EE_ASIC ; 
 short EE_CK ; 
 short EE_CS ; 
 short EE_DI ; 
 short EE_DO ; 
 int EE_READ_CMD ; 
 int /*<<< orphan*/  FUNC0 (short,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (short,unsigned int) ; 
 short FUNC2 (unsigned int,int) ; 

__attribute__((used)) static void FUNC3(unsigned int ioaddr, int location, short asic_data)
{
	int i;
	unsigned int ee_addr = ioaddr + DLINK_EEPROM;
	short dataval;
	int read_cmd = location | (EE_READ_CMD << 8);

	asic_data |= FUNC2(ioaddr, location);

	FUNC0(0, ee_addr);
	FUNC0(EE_ASIC|EE_CS|EE_DI, ee_addr);

	read_cmd = read_cmd >> 1;

	/* Shift the read command bits out. */
	for (i = 9; i >= 0; i--) {
		dataval = (read_cmd & (1 << i)) ? EE_DO : 0;
		FUNC1(EE_ASIC|EE_CS|EE_DI|dataval, ee_addr);
		FUNC1(EE_ASIC|EE_CS|EE_DI|dataval|EE_CK, ee_addr);
		FUNC1(EE_ASIC|EE_CS|EE_DI|dataval, ee_addr);
	}
	// sync
	FUNC0(EE_ASIC|EE_CS, ee_addr);
	FUNC0(EE_ASIC|EE_CS|EE_CK, ee_addr);
	FUNC0(EE_ASIC|EE_CS, ee_addr);

	for (i = 15; i >= 0; i--) {
		dataval = (asic_data & (1 << i)) ? EE_ADOT : 0;
		FUNC1(EE_ASIC|EE_CS|dataval, ee_addr);
		FUNC1(EE_ASIC|EE_CS|dataval|EE_CK, ee_addr);
		FUNC1(EE_ASIC|EE_CS|dataval, ee_addr);
	}

	/* Terminate the ASIC access. */
	FUNC0(EE_ASIC|EE_DI, ee_addr);
	FUNC0(EE_ASIC|EE_DI| EE_CK, ee_addr);
	FUNC0(EE_ASIC|EE_DI, ee_addr);

	FUNC0(0, ee_addr);
}