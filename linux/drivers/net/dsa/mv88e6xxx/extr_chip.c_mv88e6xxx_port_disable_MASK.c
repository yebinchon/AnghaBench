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
struct mv88e6xxx_chip {int /*<<< orphan*/  dev; } ;
struct dsa_switch {struct mv88e6xxx_chip* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct mv88e6xxx_chip*) ; 
 scalar_t__ FUNC3 (struct mv88e6xxx_chip*,int,int) ; 

__attribute__((used)) static void FUNC4(struct dsa_switch *ds, int port)
{
	struct mv88e6xxx_chip *chip = ds->priv;

	FUNC1(chip);
	if (FUNC3(chip, port, false))
		FUNC0(chip->dev, "failed to power off SERDES\n");
	FUNC2(chip);
}