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
struct eeprom_93cx6 {int width; } ;

/* Variables and functions */
 int PCI_EEPROM_EWDS_OPCODE ; 
 int PCI_EEPROM_EWEN_OPCODE ; 
 scalar_t__ PCI_EEPROM_WIDTH_OPCODE ; 
 int /*<<< orphan*/  FUNC0 (struct eeprom_93cx6*) ; 
 int /*<<< orphan*/  FUNC1 (struct eeprom_93cx6*) ; 
 int /*<<< orphan*/  FUNC2 (struct eeprom_93cx6*,int,scalar_t__) ; 

void FUNC3(struct eeprom_93cx6 *eeprom, bool enable)
{
	u16 command;

	/* start the command */
	FUNC1(eeprom);

	/* create command to enable/disable */

	command = enable ? PCI_EEPROM_EWEN_OPCODE : PCI_EEPROM_EWDS_OPCODE;
	command <<= (eeprom->width - 2);

	FUNC2(eeprom, command,
				PCI_EEPROM_WIDTH_OPCODE + eeprom->width);

	FUNC0(eeprom);
}