#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct hclgevf_dev {int /*<<< orphan*/  reset_state; scalar_t__ mbx_event_pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGEVF_RESET_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct hclgevf_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct hclgevf_dev*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct hclgevf_dev *hdev)
{
	/* if we have any pending mailbox event then schedule the mbx task */
	if (hdev->mbx_event_pending)
		FUNC0(hdev);

	if (FUNC2(HCLGEVF_RESET_PENDING, &hdev->reset_state))
		FUNC1(hdev);
}