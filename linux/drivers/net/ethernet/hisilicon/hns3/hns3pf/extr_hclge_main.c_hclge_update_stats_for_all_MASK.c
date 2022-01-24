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
struct hnae3_handle {scalar_t__ client; } ;
struct hclge_dev {TYPE_2__* pdev; TYPE_1__* vport; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {struct hnae3_handle nic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct hclge_dev*) ; 
 int FUNC2 (struct hnae3_handle*) ; 

__attribute__((used)) static void FUNC3(struct hclge_dev *hdev)
{
	struct hnae3_handle *handle;
	int status;

	handle = &hdev->vport[0].nic;
	if (handle->client) {
		status = FUNC2(handle);
		if (status) {
			FUNC0(&hdev->pdev->dev,
				"Update TQPS stats fail, status = %d.\n",
				status);
		}
	}

	status = FUNC1(hdev);
	if (status)
		FUNC0(&hdev->pdev->dev,
			"Update MAC stats fail, status = %d.\n", status);
}