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
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_req_get_cntl_addnl_attribs {int /*<<< orphan*/  hdr; } ;
struct be_adapter {int /*<<< orphan*/  mcc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int EBUSY ; 
 int /*<<< orphan*/  OPCODE_COMMON_GET_CNTL_ADDITIONAL_ATTRIBUTES ; 
 int FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,int /*<<< orphan*/ *) ; 
 struct be_cmd_req_get_cntl_addnl_attribs* FUNC2 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC5 (struct be_adapter*) ; 

int FUNC6(struct be_adapter *adapter)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_get_cntl_addnl_attribs *req;
	int status = 0;

	FUNC3(&adapter->mcc_lock);

	wrb = FUNC5(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}
	req = FUNC2(wrb);

	FUNC1(&req->hdr, CMD_SUBSYSTEM_COMMON,
			       OPCODE_COMMON_GET_CNTL_ADDITIONAL_ATTRIBUTES,
			       sizeof(*req), wrb, NULL);

	status = FUNC0(adapter);
err:
	FUNC4(&adapter->mcc_lock);
	return status;
}