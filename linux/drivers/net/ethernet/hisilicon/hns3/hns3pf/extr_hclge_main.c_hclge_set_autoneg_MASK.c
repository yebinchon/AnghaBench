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
struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct TYPE_4__ {int /*<<< orphan*/  support_autoneg; } ;
struct TYPE_5__ {TYPE_1__ mac; } ;
struct hclge_dev {TYPE_3__* pdev; TYPE_2__ hw; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct hclge_vport* FUNC1 (struct hnae3_handle*) ; 
 int FUNC2 (struct hclge_dev*,int) ; 

__attribute__((used)) static int FUNC3(struct hnae3_handle *handle, bool enable)
{
	struct hclge_vport *vport = FUNC1(handle);
	struct hclge_dev *hdev = vport->back;

	if (!hdev->hw.mac.support_autoneg) {
		if (enable) {
			FUNC0(&hdev->pdev->dev,
				"autoneg is not supported by current port\n");
			return -EOPNOTSUPP;
		} else {
			return 0;
		}
	}

	return FUNC2(hdev, enable);
}