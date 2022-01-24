#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct mv88e6xxx_chip {TYPE_2__* info; } ;
struct ethtool_eeprom {int magic; } ;
struct dsa_switch {struct mv88e6xxx_chip* priv; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* get_eeprom ) (struct mv88e6xxx_chip*,struct ethtool_eeprom*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct mv88e6xxx_chip*) ; 
 int FUNC2 (struct mv88e6xxx_chip*,struct ethtool_eeprom*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct dsa_switch *ds,
				struct ethtool_eeprom *eeprom, u8 *data)
{
	struct mv88e6xxx_chip *chip = ds->priv;
	int err;

	if (!chip->info->ops->get_eeprom)
		return -EOPNOTSUPP;

	FUNC0(chip);
	err = chip->info->ops->get_eeprom(chip, eeprom, data);
	FUNC1(chip);

	if (err)
		return err;

	eeprom->magic = 0xc3ec4951;

	return 0;
}