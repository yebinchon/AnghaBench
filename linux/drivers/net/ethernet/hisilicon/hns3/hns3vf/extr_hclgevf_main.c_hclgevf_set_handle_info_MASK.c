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
struct hnae3_handle {int /*<<< orphan*/  flags; int /*<<< orphan*/  numa_node_mask; TYPE_1__* pdev; int /*<<< orphan*/ * ae_algo; } ;
struct hclgevf_dev {TYPE_1__* pdev; int /*<<< orphan*/  numa_node_mask; struct hnae3_handle nic; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HNAE3_SUPPORT_VF ; 
 int /*<<< orphan*/  ae_algovf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct hclgevf_dev*) ; 

__attribute__((used)) static int FUNC2(struct hclgevf_dev *hdev)
{
	struct hnae3_handle *nic = &hdev->nic;
	int ret;

	nic->ae_algo = &ae_algovf;
	nic->pdev = hdev->pdev;
	nic->numa_node_mask = hdev->numa_node_mask;
	nic->flags |= HNAE3_SUPPORT_VF;

	ret = FUNC1(hdev);
	if (ret)
		FUNC0(&hdev->pdev->dev, "VF knic setup failed %d\n",
			ret);
	return ret;
}