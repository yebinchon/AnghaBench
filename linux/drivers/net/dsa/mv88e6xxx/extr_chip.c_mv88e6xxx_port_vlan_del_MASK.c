#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct switchdev_obj_port_vlan {scalar_t__ vid_begin; scalar_t__ vid_end; } ;
struct mv88e6xxx_chip {TYPE_1__* info; } ;
struct dsa_switch {struct mv88e6xxx_chip* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  max_vid; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int FUNC0 (struct mv88e6xxx_chip*,int,scalar_t__*) ; 
 int FUNC1 (struct mv88e6xxx_chip*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mv88e6xxx_chip*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct mv88e6xxx_chip*) ; 

__attribute__((used)) static int FUNC5(struct dsa_switch *ds, int port,
				   const struct switchdev_obj_port_vlan *vlan)
{
	struct mv88e6xxx_chip *chip = ds->priv;
	u16 pvid, vid;
	int err = 0;

	if (!chip->info->max_vid)
		return -EOPNOTSUPP;

	FUNC3(chip);

	err = FUNC0(chip, port, &pvid);
	if (err)
		goto unlock;

	for (vid = vlan->vid_begin; vid <= vlan->vid_end; ++vid) {
		err = FUNC2(chip, port, vid);
		if (err)
			goto unlock;

		if (vid == pvid) {
			err = FUNC1(chip, port, 0);
			if (err)
				goto unlock;
		}
	}

unlock:
	FUNC4(chip);

	return err;
}