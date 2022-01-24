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
struct mv88e6xxx_chip {int dummy; } ;
struct mv88e6xxx_atu_entry {int* mac; } ;

/* Variables and functions */
 scalar_t__ MV88E6XXX_G1_ATU_MAC01 ; 
 int FUNC0 (struct mv88e6xxx_chip*,scalar_t__,int) ; 

__attribute__((used)) static int FUNC1(struct mv88e6xxx_chip *chip,
				      struct mv88e6xxx_atu_entry *entry)
{
	u16 val;
	int i, err;

	for (i = 0; i < 3; i++) {
		val = (entry->mac[i * 2] << 8) | entry->mac[i * 2 + 1];
		err = FUNC0(chip, MV88E6XXX_G1_ATU_MAC01 + i, val);
		if (err)
			return err;
	}

	return 0;
}