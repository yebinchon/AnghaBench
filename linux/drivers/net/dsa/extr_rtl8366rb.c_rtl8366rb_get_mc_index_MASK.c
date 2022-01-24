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
typedef  int u32 ;
struct realtek_smi {int num_ports; int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int EINVAL ; 
 int RTL8366RB_PORT_VLAN_CTRL_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC3(struct realtek_smi *smi, int port, int *val)
{
	u32 data;
	int ret;

	if (port >= smi->num_ports)
		return -EINVAL;

	ret = FUNC2(smi->map, FUNC0(port),
			  &data);
	if (ret)
		return ret;

	*val = (data >> FUNC1(port)) &
		RTL8366RB_PORT_VLAN_CTRL_MASK;

	return 0;
}