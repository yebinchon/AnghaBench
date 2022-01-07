
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_wl_entry {size_t pnum; } ;
struct ubi_device {int ** lookuptbl; } ;


 int kmem_cache_free (int ,struct ubi_wl_entry*) ;
 int ubi_wl_entry_slab ;

__attribute__((used)) static void wl_entry_destroy(struct ubi_device *ubi, struct ubi_wl_entry *e)
{
 ubi->lookuptbl[e->pnum] = ((void*)0);
 kmem_cache_free(ubi_wl_entry_slab, e);
}
