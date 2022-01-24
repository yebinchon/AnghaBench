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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct be_mcc_wrb {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct be_cmd_resp_mac_query {TYPE_1__ mac; } ;
struct be_cmd_req_mac_query {int permanent; int /*<<< orphan*/  pmac_id; int /*<<< orphan*/  if_id; int /*<<< orphan*/  type; int /*<<< orphan*/  hdr; } ;
struct be_adapter {int /*<<< orphan*/  mcc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int EBUSY ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  MAC_ADDRESS_TYPE_NETWORK ; 
 int /*<<< orphan*/  OPCODE_COMMON_NTWK_MAC_QUERY ; 
 int FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 void* FUNC4 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC8 (struct be_adapter*) ; 

int FUNC9(struct be_adapter *adapter, u8 *mac_addr,
			  bool permanent, u32 if_handle, u32 pmac_id)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_mac_query *req;
	int status;

	FUNC6(&adapter->mcc_lock);

	wrb = FUNC8(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}
	req = FUNC4(wrb);

	FUNC1(&req->hdr, CMD_SUBSYSTEM_COMMON,
			       OPCODE_COMMON_NTWK_MAC_QUERY, sizeof(*req), wrb,
			       NULL);
	req->type = MAC_ADDRESS_TYPE_NETWORK;
	if (permanent) {
		req->permanent = 1;
	} else {
		req->if_id = FUNC2((u16)if_handle);
		req->pmac_id = FUNC3(pmac_id);
		req->permanent = 0;
	}

	status = FUNC0(adapter);
	if (!status) {
		struct be_cmd_resp_mac_query *resp = FUNC4(wrb);

		FUNC5(mac_addr, resp->mac.addr, ETH_ALEN);
	}

err:
	FUNC7(&adapter->mcc_lock);
	return status;
}