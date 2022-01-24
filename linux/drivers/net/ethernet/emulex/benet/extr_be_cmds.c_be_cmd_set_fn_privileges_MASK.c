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
struct TYPE_2__ {int /*<<< orphan*/  domain; } ;
struct be_cmd_req_set_fn_privileges {void* privileges; void* privileges_lancer; TYPE_1__ hdr; } ;
struct be_adapter {int /*<<< orphan*/  mcc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int EBUSY ; 
 int /*<<< orphan*/  OPCODE_COMMON_SET_FN_PRIVILEGES ; 
 int FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 struct be_cmd_req_set_fn_privileges* FUNC3 (struct be_mcc_wrb*) ; 
 scalar_t__ FUNC4 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC7 (struct be_adapter*) ; 

int FUNC8(struct be_adapter *adapter, u32 privileges,
			     u32 domain)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_set_fn_privileges *req;
	int status;

	FUNC5(&adapter->mcc_lock);

	wrb = FUNC7(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}

	req = FUNC3(wrb);
	FUNC1(&req->hdr, CMD_SUBSYSTEM_COMMON,
			       OPCODE_COMMON_SET_FN_PRIVILEGES, sizeof(*req),
			       wrb, NULL);
	req->hdr.domain = domain;
	if (FUNC4(adapter))
		req->privileges_lancer = FUNC2(privileges);
	else
		req->privileges = FUNC2(privileges);

	status = FUNC0(adapter);
err:
	FUNC6(&adapter->mcc_lock);
	return status;
}