
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_wqs {int * shadow_page_vaddr; int * page_paddr; int * page_vaddr; int hwif; } ;


 int WQS_PAGE_SIZE ;
 int queue_alloc_page (int ,int *,int *,int *,int ) ;

__attribute__((used)) static int wqs_allocate_page(struct hinic_wqs *wqs, int page_idx)
{
 return queue_alloc_page(wqs->hwif, &wqs->page_vaddr[page_idx],
    &wqs->page_paddr[page_idx],
    &wqs->shadow_page_vaddr[page_idx],
    WQS_PAGE_SIZE);
}
