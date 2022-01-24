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
struct hfi_session_init_pkt {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct hfi_session_init_pkt*,struct venus_inst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct venus_hfi_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct venus_hfi_device*) ; 
 int FUNC3 (struct venus_hfi_device*,struct hfi_session_init_pkt*) ; 

__attribute__((used)) static int FUNC4(struct venus_inst *inst, u32 session_type,
			      u32 codec)
{
	struct venus_hfi_device *hdev = FUNC1(inst->core);
	struct hfi_session_init_pkt pkt;
	int ret;

	ret = FUNC0(&pkt, inst, session_type, codec);
	if (ret)
		goto err;

	ret = FUNC3(hdev, &pkt);
	if (ret)
		goto err;

	return 0;

err:
	FUNC2(hdev);
	return ret;
}