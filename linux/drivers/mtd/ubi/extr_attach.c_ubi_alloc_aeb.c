
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_attach_info {int aeb_slab_cache; } ;
struct ubi_ainf_peb {int pnum; int ec; void* lnum; void* vol_id; } ;


 int GFP_KERNEL ;
 void* UBI_UNKNOWN ;
 struct ubi_ainf_peb* kmem_cache_zalloc (int ,int ) ;

struct ubi_ainf_peb *ubi_alloc_aeb(struct ubi_attach_info *ai, int pnum,
       int ec)
{
 struct ubi_ainf_peb *aeb;

 aeb = kmem_cache_zalloc(ai->aeb_slab_cache, GFP_KERNEL);
 if (!aeb)
  return ((void*)0);

 aeb->pnum = pnum;
 aeb->ec = ec;
 aeb->vol_id = UBI_UNKNOWN;
 aeb->lnum = UBI_UNKNOWN;

 return aeb;
}
