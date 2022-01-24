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
struct be_cmd_resp_get_port_name {size_t* port_name; } ;
struct TYPE_2__ {int version; } ;
struct be_cmd_req_get_port_name {TYPE_1__ hdr; } ;
struct be_adapter {size_t port_name; size_t hba_port_num; int /*<<< orphan*/  mbox_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int /*<<< orphan*/  OPCODE_COMMON_GET_PORT_NAME ; 
 int FUNC1 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,int /*<<< orphan*/ *) ; 
 void* FUNC3 (struct be_mcc_wrb*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC6 (struct be_adapter*) ; 

int FUNC7(struct be_adapter *adapter)
{
	struct be_cmd_req_get_port_name *req;
	struct be_mcc_wrb *wrb;
	int status;

	if (FUNC4(&adapter->mbox_lock))
		return -1;

	wrb = FUNC6(adapter);
	req = FUNC3(wrb);

	FUNC2(&req->hdr, CMD_SUBSYSTEM_COMMON,
			       OPCODE_COMMON_GET_PORT_NAME, sizeof(*req), wrb,
			       NULL);
	if (!FUNC0(adapter))
		req->hdr.version = 1;

	status = FUNC1(adapter);
	if (!status) {
		struct be_cmd_resp_get_port_name *resp = FUNC3(wrb);

		adapter->port_name = resp->port_name[adapter->hba_port_num];
	} else {
		adapter->port_name = adapter->hba_port_num + '0';
	}

	FUNC5(&adapter->mbox_lock);
	return status;
}