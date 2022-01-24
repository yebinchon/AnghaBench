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
struct venus_inst {int /*<<< orphan*/  core; } ;
struct venus_hfi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HFI_CMD_SYS_SESSION_ABORT ; 
 struct venus_hfi_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct venus_hfi_device*) ; 
 int FUNC2 (struct venus_inst*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct venus_inst *inst)
{
	struct venus_hfi_device *hdev = FUNC0(inst->core);

	FUNC1(hdev);

	return FUNC2(inst, HFI_CMD_SYS_SESSION_ABORT);
}