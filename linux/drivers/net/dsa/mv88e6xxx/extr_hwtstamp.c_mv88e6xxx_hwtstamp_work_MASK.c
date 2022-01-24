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
struct ptp_clock_info {int dummy; } ;
struct mv88e6xxx_port_hwtstamp {int /*<<< orphan*/  state; } ;
struct mv88e6xxx_chip {struct mv88e6xxx_port_hwtstamp* port_hwtstamp; struct dsa_switch* ds; } ;
struct dsa_switch {int num_ports; } ;

/* Variables and functions */
 int /*<<< orphan*/  MV88E6XXX_HWTSTAMP_TX_IN_PROGRESS ; 
 int /*<<< orphan*/  FUNC0 (struct dsa_switch*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mv88e6xxx_chip*,struct mv88e6xxx_port_hwtstamp*) ; 
 int FUNC2 (struct mv88e6xxx_chip*,struct mv88e6xxx_port_hwtstamp*) ; 
 struct mv88e6xxx_chip* FUNC3 (struct ptp_clock_info*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

long FUNC5(struct ptp_clock_info *ptp)
{
	struct mv88e6xxx_chip *chip = FUNC3(ptp);
	struct dsa_switch *ds = chip->ds;
	struct mv88e6xxx_port_hwtstamp *ps;
	int i, restart = 0;

	for (i = 0; i < ds->num_ports; i++) {
		if (!FUNC0(ds, i))
			continue;

		ps = &chip->port_hwtstamp[i];
		if (FUNC4(MV88E6XXX_HWTSTAMP_TX_IN_PROGRESS, &ps->state))
			restart |= FUNC2(chip, ps);

		FUNC1(chip, ps);
	}

	return restart ? 1 : -1;
}