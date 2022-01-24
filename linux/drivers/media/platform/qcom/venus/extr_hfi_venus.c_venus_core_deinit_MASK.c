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
struct venus_hfi_device {int suspended; int power_enabled; } ;
struct venus_core {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VENUS_STATE_DEINIT ; 
 struct venus_hfi_device* FUNC0 (struct venus_core*) ; 
 int /*<<< orphan*/  FUNC1 (struct venus_hfi_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct venus_core *core)
{
	struct venus_hfi_device *hdev = FUNC0(core);

	FUNC1(hdev, VENUS_STATE_DEINIT);
	hdev->suspended = true;
	hdev->power_enabled = false;

	return 0;
}