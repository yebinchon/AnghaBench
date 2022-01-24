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
struct net_device {int dummy; } ;
struct mv88e6xxx_chip {int dummy; } ;
struct dsa_switch {struct mv88e6xxx_chip* priv; } ;

/* Variables and functions */
 int FUNC0 (struct mv88e6xxx_chip*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct mv88e6xxx_chip*) ; 

__attribute__((used)) static int FUNC3(struct dsa_switch *ds, int port,
				      struct net_device *br)
{
	struct mv88e6xxx_chip *chip = ds->priv;
	int err;

	FUNC1(chip);
	err = FUNC0(chip, br);
	FUNC2(chip);

	return err;
}