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
struct venus_hfi_device {int suspended; int /*<<< orphan*/  lock; } ;
struct venus_core {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct venus_hfi_device* FUNC2 (struct venus_core*) ; 
 int FUNC3 (struct venus_hfi_device*) ; 

__attribute__((used)) static int FUNC4(struct venus_core *core)
{
	struct venus_hfi_device *hdev = FUNC2(core);
	int ret = 0;

	FUNC0(&hdev->lock);

	if (!hdev->suspended)
		goto unlock;

	ret = FUNC3(hdev);

unlock:
	if (!ret)
		hdev->suspended = false;

	FUNC1(&hdev->lock);

	return ret;
}