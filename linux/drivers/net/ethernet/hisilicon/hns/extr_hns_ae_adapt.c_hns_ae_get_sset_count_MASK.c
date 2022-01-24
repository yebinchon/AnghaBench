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
struct hns_mac_cb {scalar_t__ mac_type; } ;
struct hnae_handle {int q_num; int /*<<< orphan*/  dev; } ;
struct dsaf_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ HNAE_PORT_SERVICE ; 
 int /*<<< orphan*/  FUNC0 (struct hnae_handle*) ; 
 struct dsaf_device* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct dsaf_device*,int) ; 
 struct hns_mac_cb* FUNC3 (struct hnae_handle*) ; 
 scalar_t__ FUNC4 (struct hns_mac_cb*,int) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct hnae_handle *handle, int stringset)
{
	u32 sset_count = 0;
	struct hns_mac_cb *mac_cb;
	struct dsaf_device *dsaf_dev = FUNC1(handle->dev);

	FUNC0(handle);

	mac_cb = FUNC3(handle);

	sset_count += FUNC6(stringset) * handle->q_num;
	sset_count += FUNC5(stringset);
	sset_count += FUNC4(mac_cb, stringset);

	if (mac_cb->mac_type == HNAE_PORT_SERVICE)
		sset_count += FUNC2(dsaf_dev, stringset);

	return sset_count;
}