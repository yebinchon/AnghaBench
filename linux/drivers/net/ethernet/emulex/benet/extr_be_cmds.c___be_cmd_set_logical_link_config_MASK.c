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
typedef  int /*<<< orphan*/  u32 ;
struct be_mcc_wrb {int dummy; } ;
struct TYPE_2__ {int version; int /*<<< orphan*/  domain; } ;
struct be_cmd_req_set_ll_link {int /*<<< orphan*/  link_config; TYPE_1__ hdr; } ;
struct be_adapter {int /*<<< orphan*/  mcc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int EBUSY ; 
 int IFLA_VF_LINK_STATE_AUTO ; 
 int IFLA_VF_LINK_STATE_ENABLE ; 
 int /*<<< orphan*/  OPCODE_COMMON_SET_LOGICAL_LINK_CONFIG ; 
 int /*<<< orphan*/  PLINK_ENABLE ; 
 int /*<<< orphan*/  PLINK_TRACK ; 
 int FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct be_cmd_req_set_ll_link* FUNC3 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC6 (struct be_adapter*) ; 

__attribute__((used)) static int
FUNC7(struct be_adapter *adapter,
				 int link_state, int version, u8 domain)
{
	struct be_cmd_req_set_ll_link *req;
	struct be_mcc_wrb *wrb;
	u32 link_config = 0;
	int status;

	FUNC4(&adapter->mcc_lock);

	wrb = FUNC6(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}

	req = FUNC3(wrb);

	FUNC1(&req->hdr, CMD_SUBSYSTEM_COMMON,
			       OPCODE_COMMON_SET_LOGICAL_LINK_CONFIG,
			       sizeof(*req), wrb, NULL);

	req->hdr.version = version;
	req->hdr.domain = domain;

	if (link_state == IFLA_VF_LINK_STATE_ENABLE ||
	    link_state == IFLA_VF_LINK_STATE_AUTO)
		link_config |= PLINK_ENABLE;

	if (link_state == IFLA_VF_LINK_STATE_AUTO)
		link_config |= PLINK_TRACK;

	req->link_config = FUNC2(link_config);

	status = FUNC0(adapter);
err:
	FUNC5(&adapter->mcc_lock);
	return status;
}