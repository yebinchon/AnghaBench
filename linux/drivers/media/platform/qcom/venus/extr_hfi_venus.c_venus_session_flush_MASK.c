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
typedef  int /*<<< orphan*/  u32 ;
struct venus_inst {int /*<<< orphan*/  core; } ;
struct venus_hfi_device {int dummy; } ;
struct hfi_session_flush_pkt {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct hfi_session_flush_pkt*,struct venus_inst*,int /*<<< orphan*/ ) ; 
 struct venus_hfi_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct venus_hfi_device*,struct hfi_session_flush_pkt*) ; 

__attribute__((used)) static int FUNC3(struct venus_inst *inst, u32 flush_mode)
{
	struct venus_hfi_device *hdev = FUNC1(inst->core);
	struct hfi_session_flush_pkt pkt;
	int ret;

	ret = FUNC0(&pkt, inst, flush_mode);
	if (ret)
		return ret;

	return FUNC2(hdev, &pkt);
}