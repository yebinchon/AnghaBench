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
struct mv88e6xxx_vtu_entry {scalar_t__ vid; int valid; scalar_t__ fid; } ;
struct mv88e6xxx_chip {TYPE_1__* info; } ;
struct TYPE_2__ {scalar_t__ max_vid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENOSPC ; 
 int /*<<< orphan*/  MV88E6XXX_N_FID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fid_bitmap ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct mv88e6xxx_chip*,scalar_t__,int) ; 
 scalar_t__ FUNC4 (struct mv88e6xxx_chip*) ; 
 int FUNC5 (struct mv88e6xxx_chip*) ; 
 int FUNC6 (struct mv88e6xxx_chip*,int,scalar_t__*) ; 
 int FUNC7 (struct mv88e6xxx_chip*,struct mv88e6xxx_vtu_entry*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct mv88e6xxx_chip *chip, u16 *fid)
{
	FUNC0(fid_bitmap, MV88E6XXX_N_FID);
	struct mv88e6xxx_vtu_entry vlan;
	int i, err;

	FUNC1(fid_bitmap, MV88E6XXX_N_FID);

	/* Set every FID bit used by the (un)bridged ports */
	for (i = 0; i < FUNC5(chip); ++i) {
		err = FUNC6(chip, i, fid);
		if (err)
			return err;

		FUNC8(*fid, fid_bitmap);
	}

	/* Set every FID bit used by the VLAN entries */
	vlan.vid = chip->info->max_vid;
	vlan.valid = false;

	do {
		err = FUNC7(chip, &vlan);
		if (err)
			return err;

		if (!vlan.valid)
			break;

		FUNC8(vlan.fid, fid_bitmap);
	} while (vlan.vid < chip->info->max_vid);

	/* The reset value 0x000 is used to indicate that multiple address
	 * databases are not needed. Return the next positive available.
	 */
	*fid = FUNC2(fid_bitmap, MV88E6XXX_N_FID, 1);
	if (FUNC9(*fid >= FUNC4(chip)))
		return -ENOSPC;

	/* Clear the database */
	return FUNC3(chip, *fid, true);
}