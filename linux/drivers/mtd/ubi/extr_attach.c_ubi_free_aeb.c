
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_attach_info {int aeb_slab_cache; } ;
struct ubi_ainf_peb {int dummy; } ;


 int kmem_cache_free (int ,struct ubi_ainf_peb*) ;

void ubi_free_aeb(struct ubi_attach_info *ai, struct ubi_ainf_peb *aeb)
{
 kmem_cache_free(ai->aeb_slab_cache, aeb);
}
