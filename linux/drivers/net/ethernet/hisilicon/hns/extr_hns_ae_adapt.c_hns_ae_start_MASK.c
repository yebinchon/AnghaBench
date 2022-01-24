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
struct hns_mac_cb {TYPE_1__* dsaf_dev; } ;
struct hnae_handle {int q_num; int /*<<< orphan*/ * qs; } ;
struct TYPE_2__ {int /*<<< orphan*/  dsaf_ver; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int RCB_INT_FLAG_RX ; 
 int RCB_INT_FLAG_TX ; 
 int /*<<< orphan*/  FUNC1 (struct hnae_handle*,int) ; 
 struct hns_mac_cb* FUNC2 (struct hnae_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct hns_mac_cb*) ; 
 int FUNC4 (struct hns_mac_cb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct hnae_handle *handle)
{
	int ret;
	int k;
	struct hns_mac_cb *mac_cb = FUNC2(handle);

	ret = FUNC4(mac_cb, 0, true);
	if (ret)
		return ret;

	for (k = 0; k < handle->q_num; k++) {
		if (FUNC0(mac_cb->dsaf_dev->dsaf_ver))
			FUNC5(handle->qs[k],
					   RCB_INT_FLAG_TX | RCB_INT_FLAG_RX);
		else
			FUNC6(handle->qs[k],
					     RCB_INT_FLAG_TX | RCB_INT_FLAG_RX);
	}
	FUNC1(handle, 1);
	FUNC7(100);

	FUNC3(mac_cb);

	return 0;
}