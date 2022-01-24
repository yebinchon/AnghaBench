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
struct TYPE_2__ {int num_tqps; } ;
struct hnae3_handle {TYPE_1__ kinfo; } ;
struct hclgevf_dev {scalar_t__ reset_type; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGEVF_STATE_DOWN ; 
 scalar_t__ HNAE3_VF_RESET ; 
 struct hclgevf_dev* FUNC0 (struct hnae3_handle*) ; 
 scalar_t__ FUNC1 (struct hnae3_handle*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hnae3_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct hclgevf_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct hnae3_handle *handle)
{
	struct hclgevf_dev *hdev = FUNC0(handle);
	int i;

	FUNC4(HCLGEVF_STATE_DOWN, &hdev->state);

	if (hdev->reset_type != HNAE3_VF_RESET)
		for (i = 0; i < handle->kinfo.num_tqps; i++)
			if (FUNC1(handle, i))
				break;

	FUNC2(handle);
	FUNC3(hdev, 0);
}