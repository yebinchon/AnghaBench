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
typedef  int /*<<< orphan*/  uint64_t ;
struct mv88e6xxx_chip {int dummy; } ;
struct dsa_switch {struct mv88e6xxx_chip* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mv88e6xxx_chip*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct mv88e6xxx_chip*) ; 
 int FUNC3 (struct mv88e6xxx_chip*,int) ; 

__attribute__((used)) static void FUNC4(struct dsa_switch *ds, int port,
					uint64_t *data)
{
	struct mv88e6xxx_chip *chip = ds->priv;
	int ret;

	FUNC1(chip);

	ret = FUNC3(chip, port);
	FUNC2(chip);

	if (ret < 0)
		return;

	FUNC0(chip, port, data);

}