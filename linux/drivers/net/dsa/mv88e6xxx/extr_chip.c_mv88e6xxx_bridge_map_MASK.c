#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct mv88e6xxx_chip {TYPE_3__* ds; } ;
struct dsa_switch {int num_ports; TYPE_4__* ports; } ;
struct TYPE_8__ {struct net_device* bridge_dev; } ;
struct TYPE_7__ {TYPE_2__* dst; TYPE_1__* ports; } ;
struct TYPE_6__ {struct dsa_switch** ds; } ;
struct TYPE_5__ {struct net_device* bridge_dev; } ;

/* Variables and functions */
 int DSA_MAX_SWITCHES ; 
 int /*<<< orphan*/  FUNC0 (struct mv88e6xxx_chip*) ; 
 int FUNC1 (struct mv88e6xxx_chip*) ; 
 int FUNC2 (struct mv88e6xxx_chip*,int) ; 
 int FUNC3 (struct mv88e6xxx_chip*,int,int) ; 

__attribute__((used)) static int FUNC4(struct mv88e6xxx_chip *chip,
				struct net_device *br)
{
	struct dsa_switch *ds;
	int port;
	int dev;
	int err;

	/* Remap the Port VLAN of each local bridge group member */
	for (port = 0; port < FUNC1(chip); ++port) {
		if (chip->ds->ports[port].bridge_dev == br) {
			err = FUNC2(chip, port);
			if (err)
				return err;
		}
	}

	if (!FUNC0(chip))
		return 0;

	/* Remap the Port VLAN of each cross-chip bridge group member */
	for (dev = 0; dev < DSA_MAX_SWITCHES; ++dev) {
		ds = chip->ds->dst->ds[dev];
		if (!ds)
			break;

		for (port = 0; port < ds->num_ports; ++port) {
			if (ds->ports[port].bridge_dev == br) {
				err = FUNC3(chip, dev, port);
				if (err)
					return err;
			}
		}
	}

	return 0;
}