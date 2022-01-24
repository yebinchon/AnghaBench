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
struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HNAE3_DOWN_CLIENT ; 
 int /*<<< orphan*/  HNAE3_UP_CLIENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct hclge_vport* FUNC1 (struct hnae3_handle*) ; 
 int FUNC2 (struct hclge_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct hnae3_handle *handle)
{
	struct hclge_vport *vport = FUNC1(handle);
	struct hclge_dev *hdev = vport->back;
	int ret;

	FUNC0(&hdev->pdev->dev, "restart autoneg\n");

	ret = FUNC2(hdev, HNAE3_DOWN_CLIENT);
	if (ret)
		return ret;
	return FUNC2(hdev, HNAE3_UP_CLIENT);
}