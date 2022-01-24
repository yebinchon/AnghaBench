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
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int dummy; } ;
struct ieee_ets {int dummy; } ;
struct TYPE_2__ {struct net_device* netdev; } ;
struct hnae3_handle {TYPE_1__ kinfo; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_dev {int dcbx_cap; int flag; } ;

/* Variables and functions */
 int DCB_CAP_DCBX_VER_IEEE ; 
 int EINVAL ; 
 int HCLGE_FLAG_MQPRIO_ENABLE ; 
 int /*<<< orphan*/  drv ; 
 int FUNC0 (struct hclge_dev*) ; 
 int FUNC1 (struct hclge_dev*,struct ieee_ets*,int /*<<< orphan*/ *,int*) ; 
 struct hclge_vport* FUNC2 (struct hnae3_handle*) ; 
 int FUNC3 (struct hclge_dev*,struct ieee_ets*) ; 
 int FUNC4 (struct hclge_dev*) ; 
 int FUNC5 (struct hclge_dev*) ; 
 int FUNC6 (struct hclge_dev*) ; 
 int FUNC7 (struct hclge_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct hclge_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct hnae3_handle*,int /*<<< orphan*/ ,struct net_device*,char*) ; 

__attribute__((used)) static int FUNC10(struct hnae3_handle *h, struct ieee_ets *ets)
{
	struct hclge_vport *vport = FUNC2(h);
	struct net_device *netdev = h->kinfo.netdev;
	struct hclge_dev *hdev = vport->back;
	bool map_changed = false;
	u8 num_tc = 0;
	int ret;

	if (!(hdev->dcbx_cap & DCB_CAP_DCBX_VER_IEEE) ||
	    hdev->flag & HCLGE_FLAG_MQPRIO_ENABLE)
		return -EINVAL;

	ret = FUNC1(hdev, ets, &num_tc, &map_changed);
	if (ret)
		return ret;

	if (map_changed) {
		FUNC9(h, drv, netdev, "set ets\n");

		ret = FUNC5(hdev);
		if (ret)
			return ret;
	}

	FUNC8(hdev, num_tc);

	ret = FUNC3(hdev, ets);
	if (ret)
		goto err_out;

	if (map_changed) {
		ret = FUNC4(hdev);
		if (ret)
			goto err_out;

		ret = FUNC0(hdev);
		if (ret)
			goto err_out;

		ret = FUNC6(hdev);
		if (ret)
			return ret;
	}

	return FUNC7(hdev);

err_out:
	if (!map_changed)
		return ret;

	FUNC6(hdev);

	return ret;
}