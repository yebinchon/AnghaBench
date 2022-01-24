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
struct dsaf_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dsaf_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hns_mac_cb*,int,int /*<<< orphan*/ *) ; 

int FUNC2(struct hns_mac_cb *mac_cb, int vfn)
{
	struct dsaf_device *dsaf_dev = mac_cb->dsaf_dev;
	u8 port_num;
	int ret = FUNC1(mac_cb, vfn, &port_num);

	if (ret)
		return ret;

	return FUNC0(dsaf_dev, mac_cb->mac_id, port_num);
}