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
typedef  int /*<<< orphan*/  u8 ;
struct hns_mac_cb {int /*<<< orphan*/  mac_id; struct dsaf_device* dsaf_dev; } ;
struct dsaf_drv_mac_single_dest_entry {int /*<<< orphan*/  port_num; int /*<<< orphan*/  in_port_num; int /*<<< orphan*/  addr; } ;
struct dsaf_device {int dummy; } ;
typedef  int /*<<< orphan*/  mac_entry ;

/* Variables and functions */
 int ENOSPC ; 
 scalar_t__ FUNC0 (struct dsaf_device*) ; 
 int FUNC1 (struct dsaf_device*,struct dsaf_drv_mac_single_dest_entry*) ; 
 int FUNC2 (struct hns_mac_cb*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dsaf_drv_mac_single_dest_entry*,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct hns_mac_cb *mac_cb, u8 vf_id,
			const unsigned char *addr)
{
	struct dsaf_device *dsaf_dev = mac_cb->dsaf_dev;
	struct dsaf_drv_mac_single_dest_entry mac_entry;
	int ret;

	if (FUNC0(dsaf_dev))
		return -ENOSPC;

	FUNC4(&mac_entry, 0, sizeof(mac_entry));
	FUNC3(mac_entry.addr, addr, sizeof(mac_entry.addr));
	mac_entry.in_port_num = mac_cb->mac_id;
	ret = FUNC2(mac_cb, vf_id, &mac_entry.port_num);
	if (ret)
		return ret;

	return FUNC1(dsaf_dev, &mac_entry);
}