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
struct hinic_wq {int /*<<< orphan*/  cons_idx; int /*<<< orphan*/  wq_page_size; int /*<<< orphan*/ * block_vaddr; } ;
struct hinic_cmdqs {int /*<<< orphan*/  hwif; } ;
struct hinic_cmdq_pages {int page_paddr; } ;
struct hinic_cmdq_ctxt_info {int curr_wqe_page_pfn; int wq_block_pfn; } ;
struct hinic_cmdq_ctxt {int /*<<< orphan*/  cmdq_type; int /*<<< orphan*/  func_idx; struct hinic_cmdq_ctxt_info ctxt_info; } ;
struct hinic_cmdq {int wrapped; int /*<<< orphan*/  cmdq_type; struct hinic_wq* wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEQ_ARM ; 
 int /*<<< orphan*/  CEQ_EN ; 
 int /*<<< orphan*/  CI ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CURR_WQE_PAGE_PFN ; 
 int /*<<< orphan*/  EQ_ID ; 
 int HINIC_CEQ_ID_CMDQ ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WQ_BLOCK_PFN ; 
 int /*<<< orphan*/  WRAPPED ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct hinic_cmdqs* FUNC6 (struct hinic_cmdq*) ; 

__attribute__((used)) static void FUNC7(struct hinic_cmdq_ctxt *cmdq_ctxt,
				 struct hinic_cmdq *cmdq,
				 struct hinic_cmdq_pages *cmdq_pages)
{
	struct hinic_cmdq_ctxt_info *ctxt_info = &cmdq_ctxt->ctxt_info;
	u64 wq_first_page_paddr, cmdq_first_block_paddr, pfn;
	struct hinic_cmdqs *cmdqs = FUNC6(cmdq);
	struct hinic_wq *wq = cmdq->wq;

	/* The data in the HW is in Big Endian Format */
	wq_first_page_paddr = FUNC5(*wq->block_vaddr);

	pfn = FUNC0(wq_first_page_paddr, wq->wq_page_size);

	ctxt_info->curr_wqe_page_pfn =
		FUNC2(pfn, CURR_WQE_PAGE_PFN)   |
		FUNC2(HINIC_CEQ_ID_CMDQ, EQ_ID) |
		FUNC2(1, CEQ_ARM)               |
		FUNC2(1, CEQ_EN)                |
		FUNC2(cmdq->wrapped, WRAPPED);

	/* block PFN - Read Modify Write */
	cmdq_first_block_paddr = cmdq_pages->page_paddr;

	pfn = FUNC0(cmdq_first_block_paddr, wq->wq_page_size);

	ctxt_info->wq_block_pfn =
		FUNC1(pfn, WQ_BLOCK_PFN) |
		FUNC1(FUNC4(&wq->cons_idx), CI);

	cmdq_ctxt->func_idx = FUNC3(cmdqs->hwif);
	cmdq_ctxt->cmdq_type  = cmdq->cmdq_type;
}