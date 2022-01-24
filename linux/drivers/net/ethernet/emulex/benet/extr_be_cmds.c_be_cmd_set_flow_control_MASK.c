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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct be_mcc_wrb {int dummy; } ;
struct TYPE_2__ {int version; } ;
struct be_cmd_req_set_flow_control {void* rx_flow_control; void* tx_flow_control; TYPE_1__ hdr; } ;
struct be_adapter {int /*<<< orphan*/  mcc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int EBUSY ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 scalar_t__ MCC_STATUS_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  OPCODE_COMMON_SET_FLOW_CONTROL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct be_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 struct be_cmd_req_set_flow_control* FUNC5 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC8 (struct be_adapter*) ; 

int FUNC9(struct be_adapter *adapter, u32 tx_fc, u32 rx_fc)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_set_flow_control *req;
	int status;

	if (!FUNC1(adapter, OPCODE_COMMON_SET_FLOW_CONTROL,
			    CMD_SUBSYSTEM_COMMON))
		return -EPERM;

	FUNC6(&adapter->mcc_lock);

	wrb = FUNC8(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}
	req = FUNC5(wrb);

	FUNC3(&req->hdr, CMD_SUBSYSTEM_COMMON,
			       OPCODE_COMMON_SET_FLOW_CONTROL, sizeof(*req),
			       wrb, NULL);

	req->hdr.version = 1;
	req->tx_flow_control = FUNC4((u16)tx_fc);
	req->rx_flow_control = FUNC4((u16)rx_fc);

	status = FUNC2(adapter);

err:
	FUNC7(&adapter->mcc_lock);

	if (FUNC0(status) == MCC_STATUS_FEATURE_NOT_SUPPORTED)
		return  -EOPNOTSUPP;

	return status;
}