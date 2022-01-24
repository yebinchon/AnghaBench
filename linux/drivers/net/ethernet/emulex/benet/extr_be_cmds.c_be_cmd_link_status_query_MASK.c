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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_resp_link_status {scalar_t__ logical_link_status; int /*<<< orphan*/  mac_speed; scalar_t__ link_speed; } ;
struct TYPE_2__ {int version; int /*<<< orphan*/  domain; } ;
struct be_cmd_req_link_status {TYPE_1__ hdr; } ;
struct be_adapter {int /*<<< orphan*/  mcc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int EBUSY ; 
 scalar_t__ LINK_DOWN ; 
 int /*<<< orphan*/  OPCODE_COMMON_NTWK_LINK_STATUS_QUERY ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,int /*<<< orphan*/ *) ; 
 void* FUNC4 (struct be_mcc_wrb*) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC8 (struct be_adapter*) ; 

int FUNC9(struct be_adapter *adapter, u16 *link_speed,
			     u8 *link_status, u32 dom)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_link_status *req;
	int status;

	FUNC6(&adapter->mcc_lock);

	if (link_status)
		*link_status = LINK_DOWN;

	wrb = FUNC8(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}
	req = FUNC4(wrb);

	FUNC3(&req->hdr, CMD_SUBSYSTEM_COMMON,
			       OPCODE_COMMON_NTWK_LINK_STATUS_QUERY,
			       sizeof(*req), wrb, NULL);

	/* version 1 of the cmd is not supported only by BE2 */
	if (!FUNC0(adapter))
		req->hdr.version = 1;

	req->hdr.domain = dom;

	status = FUNC2(adapter);
	if (!status) {
		struct be_cmd_resp_link_status *resp = FUNC4(wrb);

		if (link_speed) {
			*link_speed = resp->link_speed ?
				      FUNC5(resp->link_speed) * 10 :
				      FUNC1(resp->mac_speed);

			if (!resp->logical_link_status)
				*link_speed = 0;
		}
		if (link_status)
			*link_status = resp->logical_link_status;
	}

err:
	FUNC7(&adapter->mcc_lock);
	return status;
}