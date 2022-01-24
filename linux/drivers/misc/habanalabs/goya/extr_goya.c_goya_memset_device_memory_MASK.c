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
typedef  int u64 ;
typedef  int u32 ;
struct packet_msg_prot {int dummy; } ;
struct packet_lin_dma {void* tsize; void* dst_addr; void* src_addr; void* ctl; } ;
struct hl_device {int /*<<< orphan*/  kernel_cb_mgr; int /*<<< orphan*/  dev; } ;
struct hl_cs_job {int user_cb_size; int job_cb_size; struct hl_cb* patched_cb; struct hl_cb* user_cb; int /*<<< orphan*/  hw_queue_id; scalar_t__ id; } ;
struct hl_cb {int id; int /*<<< orphan*/  cs_cnt; scalar_t__ kernel_address; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int DMA_HOST_TO_DRAM ; 
 int DMA_HOST_TO_SRAM ; 
 int ENOMEM ; 
 int GOYA_PKT_CTL_MB_SHIFT ; 
 int GOYA_PKT_CTL_OPCODE_SHIFT ; 
 int GOYA_PKT_CTL_RB_SHIFT ; 
 int GOYA_PKT_LIN_DMA_CTL_DMA_DIR_SHIFT ; 
 int GOYA_PKT_LIN_DMA_CTL_MEMSET_SHIFT ; 
 int GOYA_PKT_LIN_DMA_CTL_WO_SHIFT ; 
 int /*<<< orphan*/  GOYA_QUEUE_ID_DMA_0 ; 
 int PACKET_LIN_DMA ; 
 int PAGE_SHIFT ; 
 int SZ_2G ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct hl_device*,struct hl_cs_job*) ; 
 int /*<<< orphan*/  FUNC5 (struct hl_device*,int /*<<< orphan*/ *,int) ; 
 struct hl_cb* FUNC6 (struct hl_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct hl_cb*) ; 
 struct hl_cs_job* FUNC8 (struct hl_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct hl_device*,struct hl_cs_job*) ; 
 int /*<<< orphan*/  FUNC10 (struct hl_device*,struct hl_cs_job*) ; 
 int /*<<< orphan*/  FUNC11 (struct hl_cs_job*) ; 
 int /*<<< orphan*/  FUNC12 (struct packet_lin_dma*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC13(struct hl_device *hdev, u64 addr, u64 size,
				u64 val, bool is_dram)
{
	struct packet_lin_dma *lin_dma_pkt;
	struct hl_cs_job *job;
	u32 cb_size, ctl;
	struct hl_cb *cb;
	int rc, lin_dma_pkts_cnt;

	lin_dma_pkts_cnt = FUNC0(size, SZ_2G);
	cb_size = lin_dma_pkts_cnt * sizeof(struct packet_lin_dma) +
						sizeof(struct packet_msg_prot);
	cb = FUNC6(hdev, cb_size);
	if (!cb)
		return -ENOMEM;

	lin_dma_pkt = (struct packet_lin_dma *) (uintptr_t) cb->kernel_address;

	do {
		FUNC12(lin_dma_pkt, 0, sizeof(*lin_dma_pkt));

		ctl = ((PACKET_LIN_DMA << GOYA_PKT_CTL_OPCODE_SHIFT) |
				(1 << GOYA_PKT_LIN_DMA_CTL_MEMSET_SHIFT) |
				(1 << GOYA_PKT_LIN_DMA_CTL_WO_SHIFT) |
				(1 << GOYA_PKT_CTL_RB_SHIFT) |
				(1 << GOYA_PKT_CTL_MB_SHIFT));
		ctl |= (is_dram ? DMA_HOST_TO_DRAM : DMA_HOST_TO_SRAM) <<
				GOYA_PKT_LIN_DMA_CTL_DMA_DIR_SHIFT;
		lin_dma_pkt->ctl = FUNC1(ctl);

		lin_dma_pkt->src_addr = FUNC2(val);
		lin_dma_pkt->dst_addr = FUNC2(addr);
		if (lin_dma_pkts_cnt > 1)
			lin_dma_pkt->tsize = FUNC1(SZ_2G);
		else
			lin_dma_pkt->tsize = FUNC1(size);

		size -= SZ_2G;
		addr += SZ_2G;
		lin_dma_pkt++;
	} while (--lin_dma_pkts_cnt);

	job = FUNC8(hdev, true);
	if (!job) {
		FUNC3(hdev->dev, "Failed to allocate a new job\n");
		rc = -ENOMEM;
		goto release_cb;
	}

	job->id = 0;
	job->user_cb = cb;
	job->user_cb->cs_cnt++;
	job->user_cb_size = cb_size;
	job->hw_queue_id = GOYA_QUEUE_ID_DMA_0;
	job->patched_cb = job->user_cb;
	job->job_cb_size = job->user_cb_size;

	FUNC9(hdev, job);

	rc = FUNC4(hdev, job);

	FUNC7(job->patched_cb);

	FUNC10(hdev, job);
	FUNC11(job);
	cb->cs_cnt--;

release_cb:
	FUNC7(cb);
	FUNC5(hdev, &hdev->kernel_cb_mgr, cb->id << PAGE_SHIFT);

	return rc;
}