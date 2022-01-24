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
typedef  int /*<<< orphan*/  u32 ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_resp_get_fn_privileges {int /*<<< orphan*/  privilege_mask; } ;
struct TYPE_2__ {int /*<<< orphan*/  domain; } ;
struct be_cmd_req_get_fn_privileges {TYPE_1__ hdr; } ;
struct be_adapter {int /*<<< orphan*/  mcc_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int EBUSY ; 
 int /*<<< orphan*/  MAX_PRIVILEGES ; 
 int /*<<< orphan*/  OPCODE_COMMON_GET_FN_PRIVILEGES ; 
 scalar_t__ FUNC1 (struct be_adapter*) ; 
 int FUNC2 (struct be_adapter*) ; 
 scalar_t__ FUNC3 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,int /*<<< orphan*/ *) ; 
 void* FUNC5 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC9 (struct be_adapter*) ; 

int FUNC10(struct be_adapter *adapter, u32 *privilege,
			     u32 domain)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_get_fn_privileges *req;
	int status;

	FUNC7(&adapter->mcc_lock);

	wrb = FUNC9(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}

	req = FUNC5(wrb);

	FUNC4(&req->hdr, CMD_SUBSYSTEM_COMMON,
			       OPCODE_COMMON_GET_FN_PRIVILEGES, sizeof(*req),
			       wrb, NULL);

	req->hdr.domain = domain;

	status = FUNC2(adapter);
	if (!status) {
		struct be_cmd_resp_get_fn_privileges *resp =
						FUNC5(wrb);

		*privilege = FUNC6(resp->privilege_mask);

		/* In UMC mode FW does not return right privileges.
		 * Override with correct privilege equivalent to PF.
		 */
		if (FUNC0(adapter) && FUNC1(adapter) &&
		    FUNC3(adapter))
			*privilege = MAX_PRIVILEGES;
	}

err:
	FUNC8(&adapter->mcc_lock);
	return status;
}