#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct mv88e6xxx_chip {struct dsa_switch* ds; } ;
struct dsa_switch {int num_ports; TYPE_2__* ports; TYPE_1__* dst; } ;
struct TYPE_6__ {struct net_device* bridge_dev; } ;
struct TYPE_5__ {struct net_device* bridge_dev; } ;
struct TYPE_4__ {struct dsa_switch** ds; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DSA_MAX_SWITCHES ; 
 scalar_t__ FUNC1 (struct dsa_switch*,int) ; 
 scalar_t__ FUNC2 (struct dsa_switch*,int) ; 
 TYPE_3__* FUNC3 (struct dsa_switch*,int) ; 
 int FUNC4 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC5 (struct mv88e6xxx_chip*) ; 

__attribute__((used)) static u16 FUNC6(struct mv88e6xxx_chip *chip, int dev, int port)
{
	struct dsa_switch *ds = NULL;
	struct net_device *br;
	u16 pvlan;
	int i;

	if (dev < DSA_MAX_SWITCHES)
		ds = chip->ds->dst->ds[dev];

	/* Prevent frames from unknown switch or port */
	if (!ds || port >= ds->num_ports)
		return 0;

	/* Frames from DSA links and CPU ports can egress any local port */
	if (FUNC1(ds, port) || FUNC2(ds, port))
		return FUNC5(chip);

	br = ds->ports[port].bridge_dev;
	pvlan = 0;

	/* Frames from user ports can egress any local DSA links and CPU ports,
	 * as well as any local member of their bridge group.
	 */
	for (i = 0; i < FUNC4(chip); ++i)
		if (FUNC1(chip->ds, i) ||
		    FUNC2(chip->ds, i) ||
		    (br && FUNC3(chip->ds, i)->bridge_dev == br))
			pvlan |= FUNC0(i);

	return pvlan;
}