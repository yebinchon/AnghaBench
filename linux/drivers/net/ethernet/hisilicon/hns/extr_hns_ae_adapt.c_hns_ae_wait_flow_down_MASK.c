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
struct hns_ppe_cb {int dummy; } ;
struct hnae_vf_cb {int /*<<< orphan*/  mac_cb; } ;
struct hnae_handle {int q_num; int /*<<< orphan*/  dport_id; int /*<<< orphan*/  dev; int /*<<< orphan*/ * qs; } ;
struct dsaf_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct dsaf_device* FUNC0 (int /*<<< orphan*/ ) ; 
 struct hnae_vf_cb* FUNC1 (struct hnae_handle*) ; 
 int FUNC2 (struct dsaf_device*,int /*<<< orphan*/ ) ; 
 struct hns_ppe_cb* FUNC3 (struct hnae_handle*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct hns_ppe_cb*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct hnae_handle *handle)
{
	struct dsaf_device *dsaf_dev;
	struct hns_ppe_cb *ppe_cb;
	struct hnae_vf_cb *vf_cb;
	int ret;
	int i;

	for (i = 0; i < handle->q_num; i++) {
		ret = FUNC6(handle->qs[i]);
		if (ret)
			return ret;
	}

	ppe_cb = FUNC3(handle);
	ret = FUNC5(ppe_cb);
	if (ret)
		return ret;

	dsaf_dev = FUNC0(handle->dev);
	if (!dsaf_dev)
		return -EINVAL;
	ret = FUNC2(dsaf_dev, handle->dport_id);
	if (ret)
		return ret;

	vf_cb = FUNC1(handle);
	ret = FUNC4(vf_cb->mac_cb);
	if (ret)
		return ret;

	FUNC7(10);
	return 0;
}