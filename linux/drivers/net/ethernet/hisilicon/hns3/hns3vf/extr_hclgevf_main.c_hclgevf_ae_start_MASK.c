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
struct hnae3_handle {int dummy; } ;
struct hclgevf_dev {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGEVF_STATE_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct hclgevf_dev* FUNC1 (struct hnae3_handle*) ; 
 int /*<<< orphan*/  FUNC2 (struct hclgevf_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hnae3_handle*) ; 
 int /*<<< orphan*/  FUNC4 (struct hclgevf_dev*) ; 

__attribute__((used)) static int FUNC5(struct hnae3_handle *handle)
{
	struct hclgevf_dev *hdev = FUNC1(handle);

	FUNC3(handle);

	FUNC2(hdev);

	FUNC4(hdev);

	FUNC0(HCLGEVF_STATE_DOWN, &hdev->state);

	return 0;
}