
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int start; } ;
typedef TYPE_1__ slram_priv_t ;
struct TYPE_7__ {struct TYPE_7__* mtdinfo; struct TYPE_7__* priv; struct TYPE_7__* next; } ;
typedef TYPE_2__ slram_mtd_list_t ;


 int kfree (TYPE_2__*) ;
 int memunmap (int ) ;
 int mtd_device_unregister (TYPE_2__*) ;
 TYPE_2__* slram_mtdlist ;

__attribute__((used)) static void unregister_devices(void)
{
 slram_mtd_list_t *nextitem;

 while (slram_mtdlist) {
  nextitem = slram_mtdlist->next;
  mtd_device_unregister(slram_mtdlist->mtdinfo);
  memunmap(((slram_priv_t *)slram_mtdlist->mtdinfo->priv)->start);
  kfree(slram_mtdlist->mtdinfo->priv);
  kfree(slram_mtdlist->mtdinfo);
  kfree(slram_mtdlist);
  slram_mtdlist = nextitem;
 }
}
