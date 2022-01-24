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
struct realtek_smi {int /*<<< orphan*/  num_mib_counters; int /*<<< orphan*/  mib_counters; int /*<<< orphan*/  num_vlan_mc; int /*<<< orphan*/  num_ports; int /*<<< orphan*/  cpu_port; int /*<<< orphan*/  map; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  RTL8366RB_NUM_PORTS ; 
 int /*<<< orphan*/  RTL8366RB_NUM_VLANS ; 
 int /*<<< orphan*/  RTL8366RB_PORT_NUM_CPU ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  rtl8366rb_mib_counters ; 
 int FUNC4 (struct realtek_smi*) ; 

__attribute__((used)) static int FUNC5(struct realtek_smi *smi)
{
	struct device *dev = smi->dev;
	int ret;
	u32 val;

	/* Detect device */
	ret = FUNC3(smi->map, 0x5c, &val);
	if (ret) {
		FUNC1(dev, "can't get chip ID (%d)\n", ret);
		return ret;
	}

	switch (val) {
	case 0x6027:
		FUNC2(dev, "found an RTL8366S switch\n");
		FUNC1(dev, "this switch is not yet supported, submit patches!\n");
		return -ENODEV;
	case 0x5937:
		FUNC2(dev, "found an RTL8366RB switch\n");
		smi->cpu_port = RTL8366RB_PORT_NUM_CPU;
		smi->num_ports = RTL8366RB_NUM_PORTS;
		smi->num_vlan_mc = RTL8366RB_NUM_VLANS;
		smi->mib_counters = rtl8366rb_mib_counters;
		smi->num_mib_counters = FUNC0(rtl8366rb_mib_counters);
		break;
	default:
		FUNC2(dev, "found an Unknown Realtek switch (id=0x%04x)\n",
			 val);
		break;
	}

	ret = FUNC4(smi);
	if (ret)
		return ret;

	return 0;
}