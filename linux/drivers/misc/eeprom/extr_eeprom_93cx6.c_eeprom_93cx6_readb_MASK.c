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
typedef  int u8 ;
typedef  int u16 ;
struct eeprom_93cx6 {int width; } ;

/* Variables and functions */
 int PCI_EEPROM_READ_OPCODE ; 
 scalar_t__ PCI_EEPROM_WIDTH_OPCODE ; 
 int /*<<< orphan*/  FUNC0 (struct eeprom_93cx6*) ; 
 int /*<<< orphan*/  FUNC1 (struct eeprom_93cx6*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct eeprom_93cx6*) ; 
 int /*<<< orphan*/  FUNC3 (struct eeprom_93cx6*,int,scalar_t__) ; 

void FUNC4(struct eeprom_93cx6 *eeprom, const u8 byte,
	u8 *data)
{
	u16 command;
	u16 tmp;

	/*
	 * Initialize the eeprom register
	 */
	FUNC2(eeprom);

	/*
	 * Select the read opcode and the byte to be read.
	 */
	command = (PCI_EEPROM_READ_OPCODE << (eeprom->width + 1)) | byte;
	FUNC3(eeprom, command,
		PCI_EEPROM_WIDTH_OPCODE + eeprom->width + 1);

	/*
	 * Read the requested 8 bits.
	 */
	FUNC1(eeprom, &tmp, 8);
	*data = tmp & 0xff;

	/*
	 * Cleanup eeprom register.
	 */
	FUNC0(eeprom);
}