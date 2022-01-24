#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hclge_mac {int user_fec_mode; scalar_t__ link; int /*<<< orphan*/  autoneg; scalar_t__ support_autoneg; int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; } ;
struct TYPE_3__ {struct hclge_mac mac; } ;
struct hclge_dev {int support_sfp_query; TYPE_2__* pdev; int /*<<< orphan*/  mps; TYPE_1__ hw; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCLGE_MAC_FULL ; 
 int /*<<< orphan*/  HNAE3_FEC_USER_DEF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (struct hclge_dev*) ; 
 int FUNC3 (struct hclge_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct hclge_dev*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct hclge_dev*) ; 
 int FUNC6 (struct hclge_dev*,int) ; 
 int FUNC7 (struct hclge_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct hclge_dev *hdev)
{
	struct hclge_mac *mac = &hdev->hw.mac;
	int ret;

	hdev->support_sfp_query = true;
	hdev->hw.mac.duplex = HCLGE_MAC_FULL;
	ret = FUNC3(hdev, hdev->hw.mac.speed,
					 hdev->hw.mac.duplex);
	if (ret) {
		FUNC1(&hdev->pdev->dev,
			"Config mac speed dup fail ret=%d\n", ret);
		return ret;
	}

	if (hdev->hw.mac.support_autoneg) {
		ret = FUNC4(hdev, hdev->hw.mac.autoneg);
		if (ret) {
			FUNC1(&hdev->pdev->dev,
				"Config mac autoneg fail ret=%d\n", ret);
			return ret;
		}
	}

	mac->link = 0;

	if (mac->user_fec_mode & FUNC0(HNAE3_FEC_USER_DEF)) {
		ret = FUNC6(hdev, mac->user_fec_mode);
		if (ret) {
			FUNC1(&hdev->pdev->dev,
				"Fec mode init fail, ret = %d\n", ret);
			return ret;
		}
	}

	ret = FUNC7(hdev, hdev->mps);
	if (ret) {
		FUNC1(&hdev->pdev->dev, "set mtu failed ret=%d\n", ret);
		return ret;
	}

	ret = FUNC5(hdev);
	if (ret)
		return ret;

	ret = FUNC2(hdev);
	if (ret)
		FUNC1(&hdev->pdev->dev,
			"allocate buffer fail, ret=%d\n", ret);

	return ret;
}