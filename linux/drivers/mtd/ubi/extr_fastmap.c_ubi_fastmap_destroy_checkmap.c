
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_volume {int checkmap; } ;


 int kfree (int ) ;

void ubi_fastmap_destroy_checkmap(struct ubi_volume *vol)
{
 kfree(vol->checkmap);
}
