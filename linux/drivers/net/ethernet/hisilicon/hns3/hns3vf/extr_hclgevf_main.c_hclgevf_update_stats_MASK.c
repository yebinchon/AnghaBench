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
struct net_device_stats {int dummy; } ;
struct hnae3_handle {int dummy; } ;
struct hclgevf_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct hclgevf_dev* FUNC1 (struct hnae3_handle*) ; 
 int FUNC2 (struct hnae3_handle*) ; 

__attribute__((used)) static void FUNC3(struct hnae3_handle *handle,
				 struct net_device_stats *net_stats)
{
	struct hclgevf_dev *hdev = FUNC1(handle);
	int status;

	status = FUNC2(handle);
	if (status)
		FUNC0(&hdev->pdev->dev,
			"VF update of TQPS stats fail, status = %d.\n",
			status);
}