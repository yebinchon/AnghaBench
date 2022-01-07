
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubi_device {TYPE_1__* fm; int fm_wl_pool; int fm_pool; } ;
struct TYPE_2__ {int used_blocks; struct TYPE_2__** e; } ;


 int kfree (TYPE_1__*) ;
 int return_unused_pool_pebs (struct ubi_device*,int *) ;

__attribute__((used)) static void ubi_fastmap_close(struct ubi_device *ubi)
{
 int i;

 return_unused_pool_pebs(ubi, &ubi->fm_pool);
 return_unused_pool_pebs(ubi, &ubi->fm_wl_pool);

 if (ubi->fm) {
  for (i = 0; i < ubi->fm->used_blocks; i++)
   kfree(ubi->fm->e[i]);
 }
 kfree(ubi->fm);
}
