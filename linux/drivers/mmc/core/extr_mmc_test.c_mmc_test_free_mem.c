
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_test_mem {size_t cnt; struct mmc_test_mem* arr; int order; int page; } ;


 int __free_pages (int ,int ) ;
 int kfree (struct mmc_test_mem*) ;

__attribute__((used)) static void mmc_test_free_mem(struct mmc_test_mem *mem)
{
 if (!mem)
  return;
 while (mem->cnt--)
  __free_pages(mem->arr[mem->cnt].page,
        mem->arr[mem->cnt].order);
 kfree(mem->arr);
 kfree(mem);
}
