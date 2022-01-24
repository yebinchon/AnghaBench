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
struct mac_driver {int (* wait_fifo_clean ) (struct mac_driver*) ;} ;
struct hns_mac_cb {int dummy; } ;

/* Variables and functions */
 struct mac_driver* FUNC0 (struct hns_mac_cb*) ; 
 int FUNC1 (struct mac_driver*) ; 

int FUNC2(struct hns_mac_cb *mac_cb)
{
	struct mac_driver *drv = FUNC0(mac_cb);

	if (drv->wait_fifo_clean)
		return drv->wait_fifo_clean(drv);

	return 0;
}