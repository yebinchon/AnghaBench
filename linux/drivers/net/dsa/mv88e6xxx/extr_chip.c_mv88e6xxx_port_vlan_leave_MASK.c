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
typedef  scalar_t__ u16 ;
struct mv88e6xxx_vtu_entry {scalar_t__ vid; int valid; scalar_t__* member; int /*<<< orphan*/  fid; } ;
struct mv88e6xxx_chip {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ MV88E6XXX_G1_VTU_DATA_MEMBER_TAG_NON_MEMBER ; 
 int FUNC0 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct mv88e6xxx_chip*) ; 
 int FUNC2 (struct mv88e6xxx_chip*,struct mv88e6xxx_vtu_entry*) ; 
 int FUNC3 (struct mv88e6xxx_chip*,struct mv88e6xxx_vtu_entry*) ; 

__attribute__((used)) static int FUNC4(struct mv88e6xxx_chip *chip,
				     int port, u16 vid)
{
	struct mv88e6xxx_vtu_entry vlan;
	int i, err;

	if (!vid)
		return -EOPNOTSUPP;

	vlan.vid = vid - 1;
	vlan.valid = false;

	err = FUNC2(chip, &vlan);
	if (err)
		return err;

	/* If the VLAN doesn't exist in hardware or the port isn't a member,
	 * tell switchdev that this VLAN is likely handled in software.
	 */
	if (vlan.vid != vid || !vlan.valid ||
	    vlan.member[port] == MV88E6XXX_G1_VTU_DATA_MEMBER_TAG_NON_MEMBER)
		return -EOPNOTSUPP;

	vlan.member[port] = MV88E6XXX_G1_VTU_DATA_MEMBER_TAG_NON_MEMBER;

	/* keep the VLAN unless all ports are excluded */
	vlan.valid = false;
	for (i = 0; i < FUNC1(chip); ++i) {
		if (vlan.member[i] !=
		    MV88E6XXX_G1_VTU_DATA_MEMBER_TAG_NON_MEMBER) {
			vlan.valid = true;
			break;
		}
	}

	err = FUNC3(chip, &vlan);
	if (err)
		return err;

	return FUNC0(chip, vlan.fid, port, false);
}