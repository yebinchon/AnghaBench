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
struct be_dma_mem {int /*<<< orphan*/  size; int /*<<< orphan*/  va; } ;
struct be_queue_info {int created; int /*<<< orphan*/  id; int /*<<< orphan*/  len; struct be_dma_mem dma_mem; } ;
struct be_tx_obj {int /*<<< orphan*/  db_offset; struct be_queue_info cq; struct be_queue_info q; } ;
struct be_mcc_wrb {int /*<<< orphan*/  member_0; } ;
struct be_cmd_resp_eth_tx_create {int /*<<< orphan*/  db_offset; int /*<<< orphan*/  cid; } ;
struct TYPE_2__ {int version; } ;
struct be_cmd_req_eth_tx_create {TYPE_1__ hdr; int /*<<< orphan*/  pages; int /*<<< orphan*/  queue_size; void* cq_id; int /*<<< orphan*/  type; int /*<<< orphan*/  ulp_num; int /*<<< orphan*/  num_pages; void* if_id; } ;
struct be_adapter {int function_caps; int /*<<< orphan*/  if_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BE_ETH_TX_RING_TYPE_STANDARD ; 
 int BE_FUNCTION_CAPS_SUPER_NIC ; 
 int /*<<< orphan*/  BE_ULP1_NUM ; 
 scalar_t__ FUNC1 (struct be_adapter*) ; 
 int /*<<< orphan*/  CMD_SUBSYSTEM_ETH ; 
 int /*<<< orphan*/  DB_TXULP1_OFFSET ; 
 int /*<<< orphan*/  OPCODE_ETH_TX_CREATE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct be_adapter*,struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct be_dma_mem*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 void* FUNC8 (struct be_mcc_wrb*) ; 
 scalar_t__ FUNC9 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

int FUNC12(struct be_adapter *adapter, struct be_tx_obj *txo)
{
	struct be_mcc_wrb wrb = {0};
	struct be_cmd_req_eth_tx_create *req;
	struct be_queue_info *txq = &txo->q;
	struct be_queue_info *cq = &txo->cq;
	struct be_dma_mem *q_mem = &txq->dma_mem;
	int status, ver = 0;

	req = FUNC8(&wrb);
	FUNC6(&req->hdr, CMD_SUBSYSTEM_ETH,
			       OPCODE_ETH_TX_CREATE, sizeof(*req), &wrb, NULL);

	if (FUNC9(adapter)) {
		req->hdr.version = 1;
	} else if (FUNC1(adapter)) {
		if (adapter->function_caps & BE_FUNCTION_CAPS_SUPER_NIC)
			req->hdr.version = 2;
	} else { /* For SH */
		req->hdr.version = 2;
	}

	if (req->hdr.version > 0)
		req->if_id = FUNC7(adapter->if_handle);
	req->num_pages = FUNC2(q_mem->va, q_mem->size);
	req->ulp_num = BE_ULP1_NUM;
	req->type = BE_ETH_TX_RING_TYPE_STANDARD;
	req->cq_id = FUNC7(cq->id);
	req->queue_size = FUNC5(txq->len);
	FUNC4(req->pages, FUNC0(req->pages), q_mem);
	ver = req->hdr.version;

	status = FUNC3(adapter, &wrb);
	if (!status) {
		struct be_cmd_resp_eth_tx_create *resp = FUNC8(&wrb);

		txq->id = FUNC10(resp->cid);
		if (ver == 2)
			txo->db_offset = FUNC11(resp->db_offset);
		else
			txo->db_offset = DB_TXULP1_OFFSET;
		txq->created = true;
	}

	return status;
}