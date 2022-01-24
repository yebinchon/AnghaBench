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
struct mv88e6xxx_vtu_entry {scalar_t__ sid; int /*<<< orphan*/  valid; } ;
struct mv88e6xxx_chip {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct mv88e6xxx_chip*,struct mv88e6xxx_vtu_entry*) ; 
 int FUNC1 (struct mv88e6xxx_chip*,struct mv88e6xxx_vtu_entry*) ; 

__attribute__((used)) static int FUNC2(struct mv88e6xxx_chip *chip,
				    struct mv88e6xxx_vtu_entry *vtu)
{
	struct mv88e6xxx_vtu_entry stu;
	int err;

	err = FUNC0(chip, vtu);
	if (err)
		return err;

	stu.sid = vtu->sid - 1;

	err = FUNC1(chip, &stu);
	if (err)
		return err;

	if (stu.sid != vtu->sid || !stu.valid)
		return -EINVAL;

	return 0;
}