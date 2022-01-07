
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 unsigned long __get_free_page (int ) ;
 int free_page (unsigned long) ;
 int kmem_cache_free (int *,void*) ;
 int pr_info (char*) ;

void lkdtm_SLAB_FREE_PAGE(void)
{
 unsigned long p = __get_free_page(GFP_KERNEL);

 pr_info("Attempting non-Slab slab free ...\n");
 kmem_cache_free(((void*)0), (void *)p);
 free_page(p);
}
