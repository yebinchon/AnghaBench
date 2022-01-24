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
struct hclge_dev {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_STATE_DOWN ; 
 int /*<<< orphan*/  HCLGE_STATE_MBX_HANDLING ; 
 int /*<<< orphan*/  HCLGE_STATE_MBX_SERVICE_SCHED ; 
 int /*<<< orphan*/  HCLGE_STATE_RST_HANDLING ; 
 int /*<<< orphan*/  HCLGE_STATE_RST_SERVICE_SCHED ; 
 int /*<<< orphan*/  HCLGE_STATE_SERVICE_INITED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct hclge_dev *hdev)
{
	FUNC1(HCLGE_STATE_SERVICE_INITED, &hdev->state);
	FUNC1(HCLGE_STATE_DOWN, &hdev->state);
	FUNC0(HCLGE_STATE_RST_SERVICE_SCHED, &hdev->state);
	FUNC0(HCLGE_STATE_RST_HANDLING, &hdev->state);
	FUNC0(HCLGE_STATE_MBX_SERVICE_SCHED, &hdev->state);
	FUNC0(HCLGE_STATE_MBX_HANDLING, &hdev->state);
}