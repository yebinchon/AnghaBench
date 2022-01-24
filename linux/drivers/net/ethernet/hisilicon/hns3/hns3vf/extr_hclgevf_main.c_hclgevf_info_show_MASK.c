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
struct TYPE_4__ {int /*<<< orphan*/  media_type; } ;
struct TYPE_5__ {TYPE_1__ mac; } ;
struct hclgevf_dev {TYPE_2__ hw; int /*<<< orphan*/  hw_tc_map; int /*<<< orphan*/  num_alloc_vport; int /*<<< orphan*/  num_rx_desc; int /*<<< orphan*/  num_tx_desc; int /*<<< orphan*/  num_tqps; TYPE_3__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_6__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 

__attribute__((used)) static void FUNC1(struct hclgevf_dev *hdev)
{
	struct device *dev = &hdev->pdev->dev;

	FUNC0(dev, "VF info begin:\n");

	FUNC0(dev, "Task queue pairs numbers: %d\n", hdev->num_tqps);
	FUNC0(dev, "Desc num per TX queue: %d\n", hdev->num_tx_desc);
	FUNC0(dev, "Desc num per RX queue: %d\n", hdev->num_rx_desc);
	FUNC0(dev, "Numbers of vports: %d\n", hdev->num_alloc_vport);
	FUNC0(dev, "HW tc map: %d\n", hdev->hw_tc_map);
	FUNC0(dev, "PF media type of this VF: %d\n",
		 hdev->hw.mac.media_type);

	FUNC0(dev, "VF info end.\n");
}