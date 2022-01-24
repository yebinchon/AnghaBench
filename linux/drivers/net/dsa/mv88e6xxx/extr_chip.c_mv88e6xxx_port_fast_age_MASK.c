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
struct mv88e6xxx_chip {int dummy; } ;
struct dsa_switch {int /*<<< orphan*/  dev; struct mv88e6xxx_chip* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct mv88e6xxx_chip*) ; 

__attribute__((used)) static void FUNC4(struct dsa_switch *ds, int port)
{
	struct mv88e6xxx_chip *chip = ds->priv;
	int err;

	FUNC2(chip);
	err = FUNC1(chip, 0, port, false);
	FUNC3(chip);

	if (err)
		FUNC0(ds->dev, "p%d: failed to flush ATU\n", port);
}