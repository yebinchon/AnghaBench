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
struct dsa_switch {int dummy; } ;

/* Variables and functions */
 int MT7530_CPU_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct dsa_switch*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dsa_switch*,int) ; 

__attribute__((used)) static int
FUNC2(struct dsa_switch *ds, int port,
			   bool vlan_filtering)
{
	if (vlan_filtering) {
		/* The port is being kept as VLAN-unaware port when bridge is
		 * set up with vlan_filtering not being set, Otherwise, the
		 * port and the corresponding CPU port is required the setup
		 * for becoming a VLAN-aware port.
		 */
		FUNC0(ds, port);
		FUNC0(ds, MT7530_CPU_PORT);
	} else {
		FUNC1(ds, port);
	}

	return 0;
}