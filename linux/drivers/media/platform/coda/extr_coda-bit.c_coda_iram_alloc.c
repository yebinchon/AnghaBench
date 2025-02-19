
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coda_iram_info {size_t remaining; size_t next_paddr; } ;
typedef size_t phys_addr_t ;


 size_t round_up (size_t,int) ;

__attribute__((used)) static phys_addr_t coda_iram_alloc(struct coda_iram_info *iram, size_t size)
{
 phys_addr_t ret;

 size = round_up(size, 1024);
 if (size > iram->remaining)
  return 0;
 iram->remaining -= size;

 ret = iram->next_paddr;
 iram->next_paddr += size;

 return ret;
}
