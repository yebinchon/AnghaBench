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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct be_dma_mem {int dummy; } ;
struct be_queue_info {int created; int /*<<< orphan*/  id; struct be_dma_mem dma_mem; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_resp_eth_rx_create {int /*<<< orphan*/  rss_id; int /*<<< orphan*/  id; } ;
struct be_cmd_req_eth_rx_create {int num_pages; void* rss_queue; void* max_frame_size; void* interface_id; int /*<<< orphan*/  pages; scalar_t__ frag_size; void* cq_id; int /*<<< orphan*/  hdr; } ;
struct be_adapter {int /*<<< orphan*/  mcc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BE_MAX_JUMBO_FRAME_SIZE ; 
 int /*<<< orphan*/  CMD_SUBSYSTEM_ETH ; 
 int EBUSY ; 
 int /*<<< orphan*/  OPCODE_ETH_RX_CREATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct be_dma_mem*) ; 
 int FUNC2 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct be_mcc_wrb*,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct be_mcc_wrb*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC11 (struct be_adapter*) ; 

int FUNC12(struct be_adapter *adapter,
		      struct be_queue_info *rxq, u16 cq_id, u16 frag_size,
		      u32 if_id, u32 rss, u8 *rss_id)
{
	struct be_mcc_wrb *wrb;
	struct be_cmd_req_eth_rx_create *req;
	struct be_dma_mem *q_mem = &rxq->dma_mem;
	int status;

	FUNC9(&adapter->mcc_lock);

	wrb = FUNC11(adapter);
	if (!wrb) {
		status = -EBUSY;
		goto err;
	}
	req = FUNC6(wrb);

	FUNC3(&req->hdr, CMD_SUBSYSTEM_ETH,
			       OPCODE_ETH_RX_CREATE, sizeof(*req), wrb, NULL);

	req->cq_id = FUNC4(cq_id);
	req->frag_size = FUNC7(frag_size) - 1;
	req->num_pages = 2;
	FUNC1(req->pages, FUNC0(req->pages), q_mem);
	req->interface_id = FUNC5(if_id);
	req->max_frame_size = FUNC4(BE_MAX_JUMBO_FRAME_SIZE);
	req->rss_queue = FUNC5(rss);

	status = FUNC2(adapter);
	if (!status) {
		struct be_cmd_resp_eth_rx_create *resp = FUNC6(wrb);

		rxq->id = FUNC8(resp->id);
		rxq->created = true;
		*rss_id = resp->rss_id;
	}

err:
	FUNC10(&adapter->mcc_lock);
	return status;
}