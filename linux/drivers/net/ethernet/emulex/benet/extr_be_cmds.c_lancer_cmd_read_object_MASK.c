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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct lancer_cmd_resp_read_object {int /*<<< orphan*/  additional_status; int /*<<< orphan*/  eof; int /*<<< orphan*/  actual_read_len; } ;
struct lancer_cmd_req_read_object {void* addr_high; void* addr_low; void* buf_len; void* descriptor_count; int /*<<< orphan*/  object_name; void* read_offset; void* desired_read_len; int /*<<< orphan*/  hdr; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_dma_mem {int dma; } ;
struct be_adapter {int /*<<< orphan*/  mcc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int EBUSY ; 
 int /*<<< orphan*/  OPCODE_COMMON_READ_OBJECT ; 
 int FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int) ; 
 void* FUNC3 (struct be_mcc_wrb*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC8 (int) ; 
 struct be_mcc_wrb* FUNC9 (struct be_adapter*) ; 

int FUNC10(struct be_adapter *adapter, struct be_dma_mem *cmd,
			   u32 data_size, u32 data_offset, const char *obj_name,
			   u32 *data_read, u32 *eof, u8 *addn_status)
{
	struct be_mcc_wrb *wrb;
	struct lancer_cmd_req_read_object *req;
	struct lancer_cmd_resp_read_object *resp;
	int status;

	FUNC5(&adapter->mcc_lock);

	wrb = FUNC9(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err_unlock;
	}

	req = FUNC3(wrb);

	FUNC1(&req->hdr, CMD_SUBSYSTEM_COMMON,
			       OPCODE_COMMON_READ_OBJECT,
			       sizeof(struct lancer_cmd_req_read_object), wrb,
			       NULL);

	req->desired_read_len = FUNC2(data_size);
	req->read_offset = FUNC2(data_offset);
	FUNC7(req->object_name, obj_name);
	req->descriptor_count = FUNC2(1);
	req->buf_len = FUNC2(data_size);
	req->addr_low = FUNC2((cmd->dma & 0xFFFFFFFF));
	req->addr_high = FUNC2(FUNC8(cmd->dma));

	status = FUNC0(adapter);

	resp = FUNC3(wrb);
	if (!status) {
		*data_read = FUNC4(resp->actual_read_len);
		*eof = FUNC4(resp->eof);
	} else {
		*addn_status = resp->additional_status;
	}

err_unlock:
	FUNC6(&adapter->mcc_lock);
	return status;
}