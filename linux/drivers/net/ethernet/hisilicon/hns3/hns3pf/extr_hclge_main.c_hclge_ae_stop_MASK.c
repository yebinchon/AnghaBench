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
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_dev {scalar_t__ reset_type; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_STATE_DOWN ; 
 int /*<<< orphan*/  HCLGE_STATE_RST_HANDLING ; 
 scalar_t__ HNAE3_FUNC_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct hclge_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hnae3_handle*) ; 
 int /*<<< orphan*/  FUNC2 (struct hclge_dev*,int) ; 
 struct hclge_vport* FUNC3 (struct hnae3_handle*) ; 
 int /*<<< orphan*/  FUNC4 (struct hclge_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hnae3_handle*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hnae3_handle*) ; 
 int /*<<< orphan*/  FUNC7 (struct hclge_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct hnae3_handle *handle)
{
	struct hclge_vport *vport = FUNC3(handle);
	struct hclge_dev *hdev = vport->back;
	int i;

	FUNC8(HCLGE_STATE_DOWN, &hdev->state);

	FUNC1(handle);

	/* If it is not PF reset, the firmware will disable the MAC,
	 * so it only need to stop phy here.
	 */
	if (FUNC9(HCLGE_STATE_RST_HANDLING, &hdev->state) &&
	    hdev->reset_type != HNAE3_FUNC_RESET) {
		FUNC4(hdev);
		FUNC7(hdev);
		return;
	}

	for (i = 0; i < handle->kinfo.num_tqps; i++)
		FUNC5(handle, i);

	FUNC2(hdev, false);

	/* Mac disable */
	FUNC0(hdev, false);

	FUNC4(hdev);

	/* reset tqp stats */
	FUNC6(handle);
	FUNC7(hdev);
}