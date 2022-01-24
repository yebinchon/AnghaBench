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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_resp_loopback_test {int /*<<< orphan*/  status; } ;
struct TYPE_2__ {void* timeout; } ;
struct be_cmd_req_loopback_test {void* loopback_type; void* num_pkts; void* pkt_size; void* dest_port; void* src_port; int /*<<< orphan*/  pattern; TYPE_1__ hdr; } ;
struct be_adapter {int /*<<< orphan*/  mcc_lock; int /*<<< orphan*/  et_cmd_compl; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUBSYSTEM_LOWLEVEL ; 
 int EBUSY ; 
 int EPERM ; 
 int /*<<< orphan*/  OPCODE_LOWLEVEL_LOOPBACK_TEST ; 
 int /*<<< orphan*/  FUNC0 (struct be_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct be_mcc_wrb*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC10 (struct be_adapter*) ; 

int FUNC11(struct be_adapter *adapter, u32 port_num,
			 u32 loopback_type, u32 pkt_size, u32 num_pkts,
			 u64 pattern)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_loopback_test *req;
	struct be_cmd_resp_loopback_test *resp;
	int status;

	if (!FUNC0(adapter, OPCODE_LOWLEVEL_LOOPBACK_TEST,
			    CMD_SUBSYSTEM_LOWLEVEL))
		return -EPERM;

	FUNC7(&adapter->mcc_lock);

	wrb = FUNC10(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}

	req = FUNC5(wrb);

	FUNC2(&req->hdr, CMD_SUBSYSTEM_LOWLEVEL,
			       OPCODE_LOWLEVEL_LOOPBACK_TEST, sizeof(*req), wrb,
			       NULL);

	req->hdr.timeout = FUNC3(15);
	req->pattern = FUNC4(pattern);
	req->src_port = FUNC3(port_num);
	req->dest_port = FUNC3(port_num);
	req->pkt_size = FUNC3(pkt_size);
	req->num_pkts = FUNC3(num_pkts);
	req->loopback_type = FUNC3(loopback_type);

	status = FUNC1(adapter);
	if (status)
		goto err;

	FUNC8(&adapter->mcc_lock);

	FUNC9(&adapter->et_cmd_compl);
	resp = FUNC5(wrb);
	status = FUNC6(resp->status);

	return status;
err:
	FUNC8(&adapter->mcc_lock);
	return status;
}