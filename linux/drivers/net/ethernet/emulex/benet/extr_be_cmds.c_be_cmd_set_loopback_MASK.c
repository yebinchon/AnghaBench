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
typedef  void* u8 ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_req_set_lmode {void* loopback_state; void* loopback_type; void* dest_port; void* src_port; int /*<<< orphan*/  hdr; } ;
struct be_adapter {int /*<<< orphan*/  mcc_lock; int /*<<< orphan*/  et_cmd_compl; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUBSYSTEM_LOWLEVEL ; 
 int EBUSY ; 
 int EPERM ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  OPCODE_LOWLEVEL_SET_LOOPBACK_MODE ; 
 int /*<<< orphan*/  SET_LB_MODE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct be_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,int /*<<< orphan*/ *) ; 
 struct be_cmd_req_set_lmode* FUNC3 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct be_mcc_wrb* FUNC8 (struct be_adapter*) ; 

int FUNC9(struct be_adapter *adapter, u8 port_num,
			u8 loopback_type, u8 enable)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_set_lmode *req;
	int status;

	if (!FUNC0(adapter, OPCODE_LOWLEVEL_SET_LOOPBACK_MODE,
			    CMD_SUBSYSTEM_LOWLEVEL))
		return -EPERM;

	FUNC5(&adapter->mcc_lock);

	wrb = FUNC8(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err_unlock;
	}

	req = FUNC3(wrb);

	FUNC2(&req->hdr, CMD_SUBSYSTEM_LOWLEVEL,
			       OPCODE_LOWLEVEL_SET_LOOPBACK_MODE, sizeof(*req),
			       wrb, NULL);

	req->src_port = port_num;
	req->dest_port = port_num;
	req->loopback_type = loopback_type;
	req->loopback_state = enable;

	status = FUNC1(adapter);
	if (status)
		goto err_unlock;

	FUNC6(&adapter->mcc_lock);

	if (!FUNC7(&adapter->et_cmd_compl,
					 FUNC4(SET_LB_MODE_TIMEOUT)))
		status = -ETIMEDOUT;

	return status;

err_unlock:
	FUNC6(&adapter->mcc_lock);
	return status;
}