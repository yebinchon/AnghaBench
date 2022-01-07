
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hinic_wq {int cons_idx; int wq_page_size; int * block_vaddr; } ;
struct hinic_cmdqs {int hwif; } ;
struct hinic_cmdq_pages {int page_paddr; } ;
struct hinic_cmdq_ctxt_info {int curr_wqe_page_pfn; int wq_block_pfn; } ;
struct hinic_cmdq_ctxt {int cmdq_type; int func_idx; struct hinic_cmdq_ctxt_info ctxt_info; } ;
struct hinic_cmdq {int wrapped; int cmdq_type; struct hinic_wq* wq; } ;


 int CEQ_ARM ;
 int CEQ_EN ;
 int CI ;
 int CMDQ_PFN (int,int ) ;
 int CURR_WQE_PAGE_PFN ;
 int EQ_ID ;
 int HINIC_CEQ_ID_CMDQ ;
 int HINIC_CMDQ_CTXT_BLOCK_INFO_SET (int,int ) ;
 int HINIC_CMDQ_CTXT_PAGE_INFO_SET (int,int ) ;
 int HINIC_HWIF_FUNC_IDX (int ) ;
 int WQ_BLOCK_PFN ;
 int WRAPPED ;
 int atomic_read (int *) ;
 int be64_to_cpu (int ) ;
 struct hinic_cmdqs* cmdq_to_cmdqs (struct hinic_cmdq*) ;

__attribute__((used)) static void cmdq_init_queue_ctxt(struct hinic_cmdq_ctxt *cmdq_ctxt,
     struct hinic_cmdq *cmdq,
     struct hinic_cmdq_pages *cmdq_pages)
{
 struct hinic_cmdq_ctxt_info *ctxt_info = &cmdq_ctxt->ctxt_info;
 u64 wq_first_page_paddr, cmdq_first_block_paddr, pfn;
 struct hinic_cmdqs *cmdqs = cmdq_to_cmdqs(cmdq);
 struct hinic_wq *wq = cmdq->wq;


 wq_first_page_paddr = be64_to_cpu(*wq->block_vaddr);

 pfn = CMDQ_PFN(wq_first_page_paddr, wq->wq_page_size);

 ctxt_info->curr_wqe_page_pfn =
  HINIC_CMDQ_CTXT_PAGE_INFO_SET(pfn, CURR_WQE_PAGE_PFN) |
  HINIC_CMDQ_CTXT_PAGE_INFO_SET(HINIC_CEQ_ID_CMDQ, EQ_ID) |
  HINIC_CMDQ_CTXT_PAGE_INFO_SET(1, CEQ_ARM) |
  HINIC_CMDQ_CTXT_PAGE_INFO_SET(1, CEQ_EN) |
  HINIC_CMDQ_CTXT_PAGE_INFO_SET(cmdq->wrapped, WRAPPED);


 cmdq_first_block_paddr = cmdq_pages->page_paddr;

 pfn = CMDQ_PFN(cmdq_first_block_paddr, wq->wq_page_size);

 ctxt_info->wq_block_pfn =
  HINIC_CMDQ_CTXT_BLOCK_INFO_SET(pfn, WQ_BLOCK_PFN) |
  HINIC_CMDQ_CTXT_BLOCK_INFO_SET(atomic_read(&wq->cons_idx), CI);

 cmdq_ctxt->func_idx = HINIC_HWIF_FUNC_IDX(cmdqs->hwif);
 cmdq_ctxt->cmdq_type = cmdq->cmdq_type;
}
