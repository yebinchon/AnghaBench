#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_resp_set_func_cap {int /*<<< orphan*/  cap_flags; } ;
struct be_cmd_req_set_func_cap {void* cap_flags; void* valid_cap_flags; int /*<<< orphan*/  hdr; } ;
struct be_adapter {int be3_native; int /*<<< orphan*/  mbox_lock; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CAPABILITY_BE3_NATIVE_ERX_API ; 
 int CAPABILITY_SW_TIMESTAMPS ; 
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int EBUSY ; 
 int /*<<< orphan*/  OPCODE_COMMON_SET_DRIVER_FUNCTION_CAP ; 
 int FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC4 (struct be_mcc_wrb*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC8 (struct be_adapter*) ; 

int FUNC9(struct be_adapter *adapter)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_set_func_cap *req;
	int status;

	if (FUNC6(&adapter->mbox_lock))
		return -1;

	wrb = FUNC8(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}

	req = FUNC4(wrb);

	FUNC1(&req->hdr, CMD_SUBSYSTEM_COMMON,
			       OPCODE_COMMON_SET_DRIVER_FUNCTION_CAP,
			       sizeof(*req), wrb, NULL);

	req->valid_cap_flags = FUNC2(CAPABILITY_SW_TIMESTAMPS |
				CAPABILITY_BE3_NATIVE_ERX_API);
	req->cap_flags = FUNC2(CAPABILITY_BE3_NATIVE_ERX_API);

	status = FUNC0(adapter);
	if (!status) {
		struct be_cmd_resp_set_func_cap *resp = FUNC4(wrb);

		adapter->be3_native = FUNC5(resp->cap_flags) &
					CAPABILITY_BE3_NATIVE_ERX_API;
		if (!adapter->be3_native)
			FUNC3(&adapter->pdev->dev,
				 "adapter not in advanced mode\n");
	}
err:
	FUNC7(&adapter->mbox_lock);
	return status;
}