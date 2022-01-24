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
typedef  int /*<<< orphan*/  vlan ;
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u16 ;
struct mv88e6xxx_vtu_entry {scalar_t__ vid; int valid; scalar_t__* member; int /*<<< orphan*/  fid; } ;
struct mv88e6xxx_chip {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ MV88E6XXX_G1_VTU_DATA_MEMBER_TAG_NON_MEMBER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct mv88e6xxx_vtu_entry*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct mv88e6xxx_chip*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mv88e6xxx_chip*,scalar_t__) ; 
 int FUNC4 (struct mv88e6xxx_chip*) ; 
 int FUNC5 (struct mv88e6xxx_chip*,struct mv88e6xxx_vtu_entry*) ; 
 int FUNC6 (struct mv88e6xxx_chip*,struct mv88e6xxx_vtu_entry*) ; 

__attribute__((used)) static int FUNC7(struct mv88e6xxx_chip *chip, int port,
				    u16 vid, u8 member)
{
	const u8 non_member = MV88E6XXX_G1_VTU_DATA_MEMBER_TAG_NON_MEMBER;
	struct mv88e6xxx_vtu_entry vlan;
	int i, err;

	if (!vid)
		return -EOPNOTSUPP;

	vlan.vid = vid - 1;
	vlan.valid = false;

	err = FUNC5(chip, &vlan);
	if (err)
		return err;

	if (vlan.vid != vid || !vlan.valid) {
		FUNC1(&vlan, 0, sizeof(vlan));

		err = FUNC2(chip, &vlan.fid);
		if (err)
			return err;

		for (i = 0; i < FUNC4(chip); ++i)
			if (i == port)
				vlan.member[i] = member;
			else
				vlan.member[i] = non_member;

		vlan.vid = vid;
		vlan.valid = true;

		err = FUNC6(chip, &vlan);
		if (err)
			return err;

		err = FUNC3(chip, vlan.vid);
		if (err)
			return err;
	} else if (vlan.member[port] != member) {
		vlan.member[port] = member;

		err = FUNC6(chip, &vlan);
		if (err)
			return err;
	} else {
		FUNC0(chip->dev, "p%d: already a member of VLAN %d\n",
			 port, vid);
	}

	return 0;
}