
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubi_volume_info {int cdev; int name; int name_len; int usable_leb_size; int alignment; int upd_marker; int corrupted; int vol_type; int used_bytes; int size; int ubi_num; int vol_id; } ;
struct TYPE_2__ {int dev; } ;
struct ubi_volume {TYPE_1__ cdev; int name; int name_len; int usable_leb_size; int alignment; int upd_marker; int corrupted; int vol_type; int used_bytes; int reserved_pebs; int vol_id; } ;
struct ubi_device {int ubi_num; } ;



void ubi_do_get_volume_info(struct ubi_device *ubi, struct ubi_volume *vol,
       struct ubi_volume_info *vi)
{
 vi->vol_id = vol->vol_id;
 vi->ubi_num = ubi->ubi_num;
 vi->size = vol->reserved_pebs;
 vi->used_bytes = vol->used_bytes;
 vi->vol_type = vol->vol_type;
 vi->corrupted = vol->corrupted;
 vi->upd_marker = vol->upd_marker;
 vi->alignment = vol->alignment;
 vi->usable_leb_size = vol->usable_leb_size;
 vi->name_len = vol->name_len;
 vi->name = vol->name;
 vi->cdev = vol->cdev.dev;
}
