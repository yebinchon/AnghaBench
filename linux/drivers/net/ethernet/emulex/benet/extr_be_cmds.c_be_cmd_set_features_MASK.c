#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct be_req_ue_recovery {int dummy; } ;
struct be_mcc_wrb {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  ue2sr; int /*<<< orphan*/  ue2rp; } ;
struct TYPE_10__ {TYPE_3__ resp; } ;
struct be_cmd_resp_set_features {TYPE_4__ parameter; } ;
struct TYPE_7__ {void* uer; } ;
struct TYPE_8__ {TYPE_1__ req; } ;
struct be_cmd_req_set_features {TYPE_2__ parameter; void* parameter_len; void* features; int /*<<< orphan*/  hdr; } ;
struct TYPE_11__ {int recovery_supported; void* ue_to_reset_time; void* ue_to_poll_time; } ;
struct be_adapter {int /*<<< orphan*/  mcc_lock; TYPE_6__* pdev; TYPE_5__ error_recovery; } ;
struct TYPE_12__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BE_FEATURE_UE_RECOVERY ; 
 int BE_UE_RECOVERY_UER_MASK ; 
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int EBUSY ; 
 scalar_t__ MCC_STATUS_ILLEGAL_REQUEST ; 
 scalar_t__ MCC_STATUS_INVALID_LENGTH ; 
 int /*<<< orphan*/  OPCODE_COMMON_SET_FEATURES ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC5 (struct be_mcc_wrb*) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC9 (struct be_adapter*) ; 

int FUNC10(struct be_adapter *adapter)
{
	struct be_cmd_resp_set_features *resp;
	struct be_cmd_req_set_features *req;
	struct be_mcc_wrb *wrb;
	int status;

	if (FUNC7(&adapter->mcc_lock))
		return -1;

	wrb = FUNC9(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}

	req = FUNC5(wrb);

	FUNC2(&req->hdr, CMD_SUBSYSTEM_COMMON,
			       OPCODE_COMMON_SET_FEATURES,
			       sizeof(*req), wrb, NULL);

	req->features = FUNC3(BE_FEATURE_UE_RECOVERY);
	req->parameter_len = FUNC3(sizeof(struct be_req_ue_recovery));
	req->parameter.req.uer = FUNC3(BE_UE_RECOVERY_UER_MASK);

	status = FUNC1(adapter);
	if (status)
		goto err;

	resp = FUNC5(wrb);

	adapter->error_recovery.ue_to_poll_time =
		FUNC6(resp->parameter.resp.ue2rp);
	adapter->error_recovery.ue_to_reset_time =
		FUNC6(resp->parameter.resp.ue2sr);
	adapter->error_recovery.recovery_supported = true;
err:
	/* Checking "MCC_STATUS_INVALID_LENGTH" for SKH as FW
	 * returns this error in older firmware versions
	 */
	if (FUNC0(status) == MCC_STATUS_ILLEGAL_REQUEST ||
	    FUNC0(status) == MCC_STATUS_INVALID_LENGTH)
		FUNC4(&adapter->pdev->dev,
			 "Adapter does not support HW error recovery\n");

	FUNC8(&adapter->mcc_lock);
	return status;
}