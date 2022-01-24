#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct hns_mac_cb {int /*<<< orphan*/  mac_id; struct dsaf_device* dsaf_dev; } ;
struct dsaf_drv_mac_single_dest_entry {int /*<<< orphan*/  port_num; int /*<<< orphan*/  in_port_num; scalar_t__ in_vlan_id; int /*<<< orphan*/  addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct dsaf_device {TYPE_1__ ae_dev; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dsaf_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct dsaf_device*,struct dsaf_drv_mac_single_dest_entry*) ; 
 int FUNC3 (struct dsaf_device*,struct dsaf_drv_mac_single_dest_entry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC5(struct hns_mac_cb *mac_cb,
		      u32 port_num, char *addr, bool enable)
{
	int ret;
	struct dsaf_device *dsaf_dev = mac_cb->dsaf_dev;
	struct dsaf_drv_mac_single_dest_entry mac_entry;

	if (!FUNC0(dsaf_dev) && addr) {
		FUNC4(mac_entry.addr, addr, sizeof(mac_entry.addr));
		mac_entry.in_vlan_id = 0;/*vlan_id;*/
		mac_entry.in_port_num = mac_cb->mac_id;
		mac_entry.port_num = port_num;

		if (!enable)
			ret = FUNC3(dsaf_dev, &mac_entry);
		else
			ret = FUNC2(dsaf_dev, &mac_entry);
		if (ret) {
			FUNC1(dsaf_dev->dev,
				"set mac mc port failed, %s mac%d ret = %#x!\n",
				mac_cb->dsaf_dev->ae_dev.name,
				mac_cb->mac_id, ret);
			return ret;
		}
	}

	return 0;
}