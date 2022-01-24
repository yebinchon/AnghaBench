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
typedef  int /*<<< orphan*/  u16 ;
struct mv88e6xxx_vtu_entry {scalar_t__ vid; int valid; int /*<<< orphan*/  fid; } ;
struct mv88e6xxx_chip {TYPE_1__* info; } ;
typedef  int /*<<< orphan*/  dsa_fdb_dump_cb_t ;
struct TYPE_2__ {scalar_t__ max_vid; } ;

/* Variables and functions */
 int FUNC0 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *,void*) ; 
 int FUNC1 (struct mv88e6xxx_chip*,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct mv88e6xxx_chip*,struct mv88e6xxx_vtu_entry*) ; 

__attribute__((used)) static int FUNC3(struct mv88e6xxx_chip *chip, int port,
				  dsa_fdb_dump_cb_t *cb, void *data)
{
	struct mv88e6xxx_vtu_entry vlan;
	u16 fid;
	int err;

	/* Dump port's default Filtering Information Database (VLAN ID 0) */
	err = FUNC1(chip, port, &fid);
	if (err)
		return err;

	err = FUNC0(chip, fid, 0, port, cb, data);
	if (err)
		return err;

	/* Dump VLANs' Filtering Information Databases */
	vlan.vid = chip->info->max_vid;
	vlan.valid = false;

	do {
		err = FUNC2(chip, &vlan);
		if (err)
			return err;

		if (!vlan.valid)
			break;

		err = FUNC0(chip, vlan.fid, vlan.vid, port,
						 cb, data);
		if (err)
			return err;
	} while (vlan.vid < chip->info->max_vid);

	return err;
}