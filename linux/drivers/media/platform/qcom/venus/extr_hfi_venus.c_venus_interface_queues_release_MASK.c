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
struct venus_hfi_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  sfr; int /*<<< orphan*/  ifaceq_table; int /*<<< orphan*/ * queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct venus_hfi_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct venus_hfi_device *hdev)
{
	FUNC1(&hdev->lock);

	FUNC3(hdev, &hdev->ifaceq_table);
	FUNC3(hdev, &hdev->sfr);

	FUNC0(hdev->queues, 0, sizeof(hdev->queues));
	FUNC0(&hdev->ifaceq_table, 0, sizeof(hdev->ifaceq_table));
	FUNC0(&hdev->sfr, 0, sizeof(hdev->sfr));

	FUNC2(&hdev->lock);
}