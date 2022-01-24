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
struct hclge_dev {int flag; int /*<<< orphan*/  dv_buf_size; int /*<<< orphan*/  tx_buf_size; int /*<<< orphan*/  pkt_buf_size; int /*<<< orphan*/  hw_tc_map; int /*<<< orphan*/  num_req_vfs; int /*<<< orphan*/  num_vmdq_vport; int /*<<< orphan*/  num_alloc_vport; int /*<<< orphan*/  num_rx_desc; int /*<<< orphan*/  num_tx_desc; int /*<<< orphan*/  num_tqps; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int HCLGE_FLAG_DCB_ENABLE ; 
 int HCLGE_FLAG_MAIN ; 
 int HCLGE_FLAG_MQPRIO_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 

__attribute__((used)) static void FUNC1(struct hclge_dev *hdev)
{
	struct device *dev = &hdev->pdev->dev;

	FUNC0(dev, "PF info begin:\n");

	FUNC0(dev, "Task queue pairs numbers: %d\n", hdev->num_tqps);
	FUNC0(dev, "Desc num per TX queue: %d\n", hdev->num_tx_desc);
	FUNC0(dev, "Desc num per RX queue: %d\n", hdev->num_rx_desc);
	FUNC0(dev, "Numbers of vports: %d\n", hdev->num_alloc_vport);
	FUNC0(dev, "Numbers of vmdp vports: %d\n", hdev->num_vmdq_vport);
	FUNC0(dev, "Numbers of VF for this PF: %d\n", hdev->num_req_vfs);
	FUNC0(dev, "HW tc map: %d\n", hdev->hw_tc_map);
	FUNC0(dev, "Total buffer size for TX/RX: %d\n", hdev->pkt_buf_size);
	FUNC0(dev, "TX buffer size for each TC: %d\n", hdev->tx_buf_size);
	FUNC0(dev, "DV buffer size for each TC: %d\n", hdev->dv_buf_size);
	FUNC0(dev, "This is %s PF\n",
		 hdev->flag & HCLGE_FLAG_MAIN ? "main" : "not main");
	FUNC0(dev, "DCB %s\n",
		 hdev->flag & HCLGE_FLAG_DCB_ENABLE ? "enable" : "disable");
	FUNC0(dev, "MQPRIO %s\n",
		 hdev->flag & HCLGE_FLAG_MQPRIO_ENABLE ? "enable" : "disable");

	FUNC0(dev, "PF info end.\n");
}