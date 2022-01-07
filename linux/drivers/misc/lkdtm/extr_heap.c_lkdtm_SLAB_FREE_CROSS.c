
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int a_cache ;
 int b_cache ;
 int* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,int*) ;
 int pr_info (char*) ;

void lkdtm_SLAB_FREE_CROSS(void)
{
 int *val;

 val = kmem_cache_alloc(a_cache, GFP_KERNEL);
 if (!val) {
  pr_info("Unable to allocate a_cache memory.\n");
  return;
 }


 *val = 0x12345679;
 pr_info("Attempting cross-cache slab free ...\n");
 kmem_cache_free(b_cache, val);
}
