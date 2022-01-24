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
typedef  int /*<<< orphan*/  vtag_array ;
typedef  void* u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct be_mcc_wrb {int dummy; } ;
struct TYPE_2__ {void* domain; } ;
struct be_cmd_req_vlan_config {int untagged; int num_vlan; int /*<<< orphan*/  normal_vlan; void* interface_id; TYPE_1__ hdr; } ;
struct be_adapter {int /*<<< orphan*/  mcc_lock; } ;

/* Variables and functions */
 int BE_IF_FLAGS_UNTAGGED ; 
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int EBUSY ; 
 int /*<<< orphan*/  OPCODE_COMMON_NTWK_VLAN_CONFIG ; 
 int FUNC0 (struct be_adapter*) ; 
 int FUNC1 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,int /*<<< orphan*/ *) ; 
 struct be_cmd_req_vlan_config* FUNC3 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC7 (struct be_adapter*) ; 

int FUNC8(struct be_adapter *adapter, u32 if_id, u16 *vtag_array,
		       u32 num, u32 domain)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_vlan_config *req;
	int status;

	FUNC5(&adapter->mcc_lock);

	wrb = FUNC7(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}
	req = FUNC3(wrb);

	FUNC2(&req->hdr, CMD_SUBSYSTEM_COMMON,
			       OPCODE_COMMON_NTWK_VLAN_CONFIG, sizeof(*req),
			       wrb, NULL);
	req->hdr.domain = domain;

	req->interface_id = if_id;
	req->untagged = BE_IF_FLAGS_UNTAGGED & FUNC0(adapter) ? 1 : 0;
	req->num_vlan = num;
	FUNC4(req->normal_vlan, vtag_array,
	       req->num_vlan * sizeof(vtag_array[0]));

	status = FUNC1(adapter);
err:
	FUNC6(&adapter->mcc_lock);
	return status;
}