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
struct mv88e6xxx_vtu_entry {int sid; } ;
struct mv88e6xxx_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MV88E6352_G1_VTU_SID ; 
 int MV88E6352_G1_VTU_SID_MASK ; 
 int FUNC0 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC1(struct mv88e6xxx_chip *chip,
				     struct mv88e6xxx_vtu_entry *entry)
{
	u16 val;
	int err;

	err = FUNC0(chip, MV88E6352_G1_VTU_SID, &val);
	if (err)
		return err;

	entry->sid = val & MV88E6352_G1_VTU_SID_MASK;

	return 0;
}