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
struct realtek_smi {int num_ports; int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int EINVAL ; 
 int RTL8366RB_NUM_VLANS ; 
 int RTL8366RB_PORT_VLAN_CTRL_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC3(struct realtek_smi *smi, int port, int index)
{
	if (port >= smi->num_ports || index >= RTL8366RB_NUM_VLANS)
		return -EINVAL;

	return FUNC2(smi->map, FUNC0(port),
				RTL8366RB_PORT_VLAN_CTRL_MASK <<
					FUNC1(port),
				(index & RTL8366RB_PORT_VLAN_CTRL_MASK) <<
					FUNC1(port));
}