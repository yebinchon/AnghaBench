
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_wl_entry {size_t pnum; int ec; } ;
struct ubi_device {int free_count; int free; struct ubi_wl_entry** lookuptbl; } ;
struct ubi_ainf_peb {size_t pnum; int lnum; int vol_id; int ec; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct ubi_wl_entry* kmem_cache_alloc (int ,int ) ;
 int schedule_erase (struct ubi_device*,struct ubi_wl_entry*,int ,int ,int ,int) ;
 int sync_erase (struct ubi_device*,struct ubi_wl_entry*,int) ;
 int ubi_wl_entry_slab ;
 int wl_entry_destroy (struct ubi_device*,struct ubi_wl_entry*) ;
 int wl_tree_add (struct ubi_wl_entry*,int *) ;

__attribute__((used)) static int erase_aeb(struct ubi_device *ubi, struct ubi_ainf_peb *aeb, bool sync)
{
 struct ubi_wl_entry *e;
 int err;

 e = kmem_cache_alloc(ubi_wl_entry_slab, GFP_KERNEL);
 if (!e)
  return -ENOMEM;

 e->pnum = aeb->pnum;
 e->ec = aeb->ec;
 ubi->lookuptbl[e->pnum] = e;

 if (sync) {
  err = sync_erase(ubi, e, 0);
  if (err)
   goto out_free;

  wl_tree_add(e, &ubi->free);
  ubi->free_count++;
 } else {
  err = schedule_erase(ubi, e, aeb->vol_id, aeb->lnum, 0, 0);
  if (err)
   goto out_free;
 }

 return 0;

out_free:
 wl_entry_destroy(ubi, e);

 return err;
}
