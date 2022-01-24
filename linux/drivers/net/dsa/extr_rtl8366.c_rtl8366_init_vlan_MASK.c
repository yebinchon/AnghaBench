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
struct realtek_smi {int num_ports; int cpu_port; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int FUNC3 (struct realtek_smi*,int) ; 
 int FUNC4 (struct realtek_smi*) ; 
 int FUNC5 (struct realtek_smi*,int,int) ; 
 int FUNC6 (struct realtek_smi*,int,int,int,int /*<<< orphan*/ ) ; 

int FUNC7(struct realtek_smi *smi)
{
	int port;
	int ret;

	ret = FUNC4(smi);
	if (ret)
		return ret;

	/* Loop over the available ports, for each port, associate
	 * it with the VLAN (port+1)
	 */
	for (port = 0; port < smi->num_ports; port++) {
		u32 mask;

		if (port == smi->cpu_port)
			/* For the CPU port, make all ports members of this
			 * VLAN.
			 */
			mask = FUNC1(smi->num_ports - 1, 0);
		else
			/* For all other ports, enable itself plus the
			 * CPU port.
			 */
			mask = FUNC0(port) | FUNC0(smi->cpu_port);

		/* For each port, set the port as member of VLAN (port+1)
		 * and untagged, except for the CPU port: the CPU port (5) is
		 * member of VLAN 6 and so are ALL the other ports as well.
		 * Use filter 0 (no filter).
		 */
		FUNC2(smi->dev, "VLAN%d port mask for port %d, %08x\n",
			 (port + 1), port, mask);
		ret = FUNC6(smi, (port + 1), mask, mask, 0);
		if (ret)
			return ret;

		FUNC2(smi->dev, "VLAN%d port %d, PVID set to %d\n",
			 (port + 1), port, (port + 1));
		ret = FUNC5(smi, port, (port + 1));
		if (ret)
			return ret;
	}

	return FUNC3(smi, true);
}