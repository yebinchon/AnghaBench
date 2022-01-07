
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct gve_rx_slot_page_info {int page_address; scalar_t__ page_offset; struct page* page; } ;
struct gve_rx_data_slot {int qpl_offset; } ;
typedef int dma_addr_t ;


 int cpu_to_be64 (int ) ;
 int page_address (struct page*) ;

__attribute__((used)) static void gve_setup_rx_buffer(struct gve_rx_slot_page_info *page_info,
    struct gve_rx_data_slot *slot,
    dma_addr_t addr, struct page *page)
{
 page_info->page = page;
 page_info->page_offset = 0;
 page_info->page_address = page_address(page);
 slot->qpl_offset = cpu_to_be64(addr);
}
