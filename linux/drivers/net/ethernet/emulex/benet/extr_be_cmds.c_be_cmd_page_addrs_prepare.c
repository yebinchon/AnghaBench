
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct phys_addr {void* hi; void* lo; } ;
struct be_dma_mem {int dma; int size; int va; } ;


 int PAGES_4K_SPANNED (int ,int ) ;
 scalar_t__ PAGE_SIZE_4K ;
 void* cpu_to_le32 (int) ;
 int min (int ,int ) ;
 int upper_32_bits (int) ;

__attribute__((used)) static void be_cmd_page_addrs_prepare(struct phys_addr *pages, u32 max_pages,
          struct be_dma_mem *mem)
{
 int i, buf_pages = min(PAGES_4K_SPANNED(mem->va, mem->size), max_pages);
 u64 dma = (u64)mem->dma;

 for (i = 0; i < buf_pages; i++) {
  pages[i].lo = cpu_to_le32(dma & 0xFFFFFFFF);
  pages[i].hi = cpu_to_le32(upper_32_bits(dma));
  dma += PAGE_SIZE_4K;
 }
}
