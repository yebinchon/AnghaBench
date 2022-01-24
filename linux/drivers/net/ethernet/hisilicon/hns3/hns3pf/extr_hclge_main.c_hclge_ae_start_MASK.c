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
struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct TYPE_3__ {scalar_t__ link; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct hclge_dev {TYPE_2__ hw; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_STATE_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hclge_dev*,int) ; 
 struct hclge_vport* FUNC2 (struct hnae3_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct hclge_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hnae3_handle*) ; 

__attribute__((used)) static int FUNC5(struct hnae3_handle *handle)
{
	struct hclge_vport *vport = FUNC2(handle);
	struct hclge_dev *hdev = vport->back;

	/* mac enable */
	FUNC1(hdev, true);
	FUNC0(HCLGE_STATE_DOWN, &hdev->state);
	hdev->hw.mac.link = 0;

	/* reset tqp stats */
	FUNC4(handle);

	FUNC3(hdev);

	return 0;
}