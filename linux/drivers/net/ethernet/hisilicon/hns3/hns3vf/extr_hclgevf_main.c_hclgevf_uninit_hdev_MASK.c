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
struct hclgevf_dev {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGEVF_STATE_IRQ_INITED ; 
 int /*<<< orphan*/  FUNC0 (struct hclgevf_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct hclgevf_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hclgevf_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hclgevf_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hclgevf_dev*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct hclgevf_dev *hdev)
{
	FUNC3(hdev);

	if (FUNC5(HCLGEVF_STATE_IRQ_INITED, &hdev->state)) {
		FUNC1(hdev);
		FUNC4(hdev);
	}

	FUNC2(hdev);
	FUNC0(hdev);
}