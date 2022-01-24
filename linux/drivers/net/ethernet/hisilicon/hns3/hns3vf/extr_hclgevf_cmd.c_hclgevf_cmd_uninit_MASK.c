#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {TYPE_2__ crq; TYPE_2__ csq; } ;
struct TYPE_6__ {TYPE_1__ cmq; } ;
struct hclgevf_dev {TYPE_3__ hw; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGEVF_STATE_CMD_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct hclgevf_dev *hdev)
{
	FUNC4(&hdev->hw.cmq.csq.lock);
	FUNC3(&hdev->hw.cmq.crq.lock);
	FUNC0(HCLGEVF_STATE_CMD_DISABLE, &hdev->state);
	FUNC1(&hdev->hw);
	FUNC5(&hdev->hw.cmq.crq.lock);
	FUNC6(&hdev->hw.cmq.csq.lock);
	FUNC2(&hdev->hw.cmq.csq);
	FUNC2(&hdev->hw.cmq.crq);
}