#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct TYPE_7__ {int /*<<< orphan*/  lock; } ;
struct TYPE_8__ {TYPE_1__ csq; TYPE_2__ crq; } ;
struct TYPE_9__ {TYPE_3__ cmq; } ;
struct hclge_dev {TYPE_4__ hw; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_STATE_CMD_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct hclge_dev *hdev)
{
	FUNC4(&hdev->hw.cmq.csq.lock);
	FUNC3(&hdev->hw.cmq.crq.lock);
	FUNC2(HCLGE_STATE_CMD_DISABLE, &hdev->state);
	FUNC0(&hdev->hw);
	FUNC5(&hdev->hw.cmq.crq.lock);
	FUNC6(&hdev->hw.cmq.csq.lock);

	FUNC1(&hdev->hw);
}