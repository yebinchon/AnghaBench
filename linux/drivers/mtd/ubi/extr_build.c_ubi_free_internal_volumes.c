
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_device {int vtbl_slots; int * volumes; } ;


 int UBI_INT_VOL_COUNT ;
 int kfree (int ) ;
 int ubi_eba_replace_table (int ,int *) ;
 int ubi_fastmap_destroy_checkmap (int ) ;

void ubi_free_internal_volumes(struct ubi_device *ubi)
{
 int i;

 for (i = ubi->vtbl_slots;
      i < ubi->vtbl_slots + UBI_INT_VOL_COUNT; i++) {
  ubi_eba_replace_table(ubi->volumes[i], ((void*)0));
  ubi_fastmap_destroy_checkmap(ubi->volumes[i]);
  kfree(ubi->volumes[i]);
 }
}
