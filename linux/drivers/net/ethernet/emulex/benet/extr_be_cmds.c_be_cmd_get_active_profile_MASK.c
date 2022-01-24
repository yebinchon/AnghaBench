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
typedef  int /*<<< orphan*/  u16 ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_resp_get_active_profile {int /*<<< orphan*/  active_profile_id; } ;
struct be_cmd_req_get_active_profile {int /*<<< orphan*/  hdr; } ;
struct be_adapter {int /*<<< orphan*/  mbox_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int EBUSY ; 
 int /*<<< orphan*/  OPCODE_COMMON_GET_ACTIVE_PROFILE ; 
 int FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,int /*<<< orphan*/ *) ; 
 void* FUNC2 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC6 (struct be_adapter*) ; 

int FUNC7(struct be_adapter *adapter, u16 *profile_id)
{
	struct be_cmd_req_get_active_profile *req;
	struct be_mcc_wrb *wrb;
	int status;

	if (FUNC4(&adapter->mbox_lock))
		return -1;

	wrb = FUNC6(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}

	req = FUNC2(wrb);

	FUNC1(&req->hdr, CMD_SUBSYSTEM_COMMON,
			       OPCODE_COMMON_GET_ACTIVE_PROFILE, sizeof(*req),
			       wrb, NULL);

	status = FUNC0(adapter);
	if (!status) {
		struct be_cmd_resp_get_active_profile *resp =
							FUNC2(wrb);

		*profile_id = FUNC3(resp->active_profile_id);
	}

err:
	FUNC5(&adapter->mbox_lock);
	return status;
}