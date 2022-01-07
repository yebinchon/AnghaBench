
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_device {int lookuptbl; int scrub; int free; int erroneous; int used; } ;


 int dbg_wl (char*) ;
 int kfree (int ) ;
 int protection_queue_destroy (struct ubi_device*) ;
 int shutdown_work (struct ubi_device*) ;
 int tree_destroy (struct ubi_device*,int *) ;
 int ubi_fastmap_close (struct ubi_device*) ;

void ubi_wl_close(struct ubi_device *ubi)
{
 dbg_wl("close the WL sub-system");
 ubi_fastmap_close(ubi);
 shutdown_work(ubi);
 protection_queue_destroy(ubi);
 tree_destroy(ubi, &ubi->used);
 tree_destroy(ubi, &ubi->erroneous);
 tree_destroy(ubi, &ubi->free);
 tree_destroy(ubi, &ubi->scrub);
 kfree(ubi->lookuptbl);
}
