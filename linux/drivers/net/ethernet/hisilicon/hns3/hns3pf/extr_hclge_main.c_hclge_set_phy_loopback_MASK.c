#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct phy_device {int dummy; } ;
struct TYPE_4__ {struct phy_device* phydev; } ;
struct TYPE_5__ {TYPE_1__ mac; } ;
struct hclge_dev {TYPE_3__* pdev; TYPE_2__ hw; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct hclge_dev*,int) ; 
 int FUNC2 (struct hclge_dev*,struct phy_device*) ; 
 int FUNC3 (struct hclge_dev*,struct phy_device*) ; 
 int FUNC4 (struct hclge_dev*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct hclge_dev *hdev, bool en)
{
	struct phy_device *phydev = hdev->hw.mac.phydev;
	int ret;

	if (!phydev)
		return -ENOTSUPP;

	if (en)
		ret = FUNC3(hdev, phydev);
	else
		ret = FUNC2(hdev, phydev);
	if (ret) {
		FUNC0(&hdev->pdev->dev,
			"set phy loopback fail, ret = %d\n", ret);
		return ret;
	}

	FUNC1(hdev, en);

	ret = FUNC4(hdev, en, TRUE);
	if (ret)
		FUNC0(&hdev->pdev->dev,
			"phy loopback config mac mode timeout\n");

	return ret;
}