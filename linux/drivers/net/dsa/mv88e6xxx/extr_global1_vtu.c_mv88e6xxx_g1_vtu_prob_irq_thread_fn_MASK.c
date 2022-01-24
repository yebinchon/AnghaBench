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
typedef  int u16 ;
struct mv88e6xxx_vtu_entry {int /*<<< orphan*/  vid; } ;
struct mv88e6xxx_chip {int /*<<< orphan*/  dev; TYPE_1__* ports; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  vtu_miss_violation; int /*<<< orphan*/  vtu_member_violation; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  MV88E6XXX_G1_VTU_OP ; 
 int /*<<< orphan*/  MV88E6XXX_G1_VTU_OP_GET_CLR_VIOLATION ; 
 int MV88E6XXX_G1_VTU_OP_MEMBER_VIOLATION ; 
 int MV88E6XXX_G1_VTU_OP_MISS_VIOLATION ; 
 int MV88E6XXX_G1_VTU_OP_SPID_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mv88e6xxx_chip*,struct mv88e6xxx_vtu_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC7 (struct mv88e6xxx_chip*) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct mv88e6xxx_chip *chip = dev_id;
	struct mv88e6xxx_vtu_entry entry;
	int spid;
	int err;
	u16 val;

	FUNC6(chip);

	err = FUNC4(chip, MV88E6XXX_G1_VTU_OP_GET_CLR_VIOLATION);
	if (err)
		goto out;

	err = FUNC3(chip, MV88E6XXX_G1_VTU_OP, &val);
	if (err)
		goto out;

	err = FUNC5(chip, &entry);
	if (err)
		goto out;

	spid = val & MV88E6XXX_G1_VTU_OP_SPID_MASK;

	if (val & MV88E6XXX_G1_VTU_OP_MEMBER_VIOLATION) {
		FUNC2(chip->dev, "VTU member violation for vid %d, source port %d\n",
				    entry.vid, spid);
		chip->ports[spid].vtu_member_violation++;
	}

	if (val & MV88E6XXX_G1_VTU_OP_MISS_VIOLATION) {
		FUNC0(chip->dev, "VTU miss violation for vid %d, source port %d\n",
				    entry.vid, spid);
		chip->ports[spid].vtu_miss_violation++;
	}

	FUNC7(chip);

	return IRQ_HANDLED;

out:
	FUNC7(chip);

	FUNC1(chip->dev, "VTU problem: error %d while handling interrupt\n",
		err);

	return IRQ_HANDLED;
}