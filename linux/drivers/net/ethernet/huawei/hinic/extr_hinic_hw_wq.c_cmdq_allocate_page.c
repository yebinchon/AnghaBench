
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_cmdq_pages {int shadow_page_vaddr; int page_paddr; int page_vaddr; int hwif; } ;


 int CMDQ_PAGE_SIZE ;
 int queue_alloc_page (int ,int *,int *,int *,int ) ;

__attribute__((used)) static int cmdq_allocate_page(struct hinic_cmdq_pages *cmdq_pages)
{
 return queue_alloc_page(cmdq_pages->hwif, &cmdq_pages->page_vaddr,
    &cmdq_pages->page_paddr,
    &cmdq_pages->shadow_page_vaddr,
    CMDQ_PAGE_SIZE);
}
