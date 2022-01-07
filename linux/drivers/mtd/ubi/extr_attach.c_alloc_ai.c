
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_attach_info {int aeb_slab_cache; int volumes; int fastmap; int alien; int erase; int free; int corr; } ;
struct ubi_ainf_peb {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int RB_ROOT ;
 int kfree (struct ubi_attach_info*) ;
 int kmem_cache_create (char*,int,int ,int ,int *) ;
 struct ubi_attach_info* kzalloc (int,int ) ;

__attribute__((used)) static struct ubi_attach_info *alloc_ai(void)
{
 struct ubi_attach_info *ai;

 ai = kzalloc(sizeof(struct ubi_attach_info), GFP_KERNEL);
 if (!ai)
  return ai;

 INIT_LIST_HEAD(&ai->corr);
 INIT_LIST_HEAD(&ai->free);
 INIT_LIST_HEAD(&ai->erase);
 INIT_LIST_HEAD(&ai->alien);
 INIT_LIST_HEAD(&ai->fastmap);
 ai->volumes = RB_ROOT;
 ai->aeb_slab_cache = kmem_cache_create("ubi_aeb_slab_cache",
            sizeof(struct ubi_ainf_peb),
            0, 0, ((void*)0));
 if (!ai->aeb_slab_cache) {
  kfree(ai);
  ai = ((void*)0);
 }

 return ai;
}
