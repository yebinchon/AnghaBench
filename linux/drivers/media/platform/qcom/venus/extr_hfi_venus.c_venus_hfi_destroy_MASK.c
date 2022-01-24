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
struct venus_hfi_device {int /*<<< orphan*/  lock; } ;
struct venus_core {int /*<<< orphan*/ * ops; int /*<<< orphan*/ * priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct venus_hfi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct venus_hfi_device* FUNC2 (struct venus_core*) ; 
 int /*<<< orphan*/  FUNC3 (struct venus_hfi_device*) ; 

void FUNC4(struct venus_core *core)
{
	struct venus_hfi_device *hdev = FUNC2(core);

	FUNC3(hdev);
	FUNC1(&hdev->lock);
	FUNC0(hdev);
	core->priv = NULL;
	core->ops = NULL;
}