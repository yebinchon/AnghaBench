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
struct mv88e6xxx_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MV88E6390_G2_EEPROM_ADDR ; 
 int MV88E6XXX_G2_EEPROM_CMD_OP_WRITE ; 
 int MV88E6XXX_G2_EEPROM_CMD_WRITE_EN ; 
 int FUNC0 (struct mv88e6xxx_chip*,int) ; 
 int FUNC1 (struct mv88e6xxx_chip*) ; 
 int FUNC2 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct mv88e6xxx_chip *chip,
				      u16 addr, u8 data)
{
	u16 cmd = MV88E6XXX_G2_EEPROM_CMD_OP_WRITE |
		MV88E6XXX_G2_EEPROM_CMD_WRITE_EN;
	int err;

	err = FUNC1(chip);
	if (err)
		return err;

	err = FUNC2(chip, MV88E6390_G2_EEPROM_ADDR, addr);
	if (err)
		return err;

	return FUNC0(chip, cmd | data);
}