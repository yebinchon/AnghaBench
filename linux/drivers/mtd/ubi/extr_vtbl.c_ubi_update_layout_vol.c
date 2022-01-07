
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_volume {int dummy; } ;
struct ubi_device {int vtbl_size; int vtbl; struct ubi_volume** volumes; } ;


 int UBI_LAYOUT_VOLUME_EBS ;
 int UBI_LAYOUT_VOLUME_ID ;
 int ubi_eba_atomic_leb_change (struct ubi_device*,struct ubi_volume*,int,int ,int ) ;
 size_t vol_id2idx (struct ubi_device*,int ) ;

__attribute__((used)) static int ubi_update_layout_vol(struct ubi_device *ubi)
{
 struct ubi_volume *layout_vol;
 int i, err;

 layout_vol = ubi->volumes[vol_id2idx(ubi, UBI_LAYOUT_VOLUME_ID)];
 for (i = 0; i < UBI_LAYOUT_VOLUME_EBS; i++) {
  err = ubi_eba_atomic_leb_change(ubi, layout_vol, i, ubi->vtbl,
      ubi->vtbl_size);
  if (err)
   return err;
 }

 return 0;
}
