
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubi_volume_desc {int mode; struct ubi_volume* vol; } ;
struct ubi_volume {int upd_buf; scalar_t__ changing_leb; int vol_id; TYPE_1__* ubi; int upd_bytes; int upd_received; scalar_t__ updating; } ;
struct inode {int dummy; } ;
struct file {struct ubi_volume_desc* private_data; } ;
struct TYPE_2__ {int ubi_num; } ;


 int dbg_gen (char*,int ,int ,int ,...) ;
 int ubi_assert (int) ;
 int ubi_close_volume (struct ubi_volume_desc*) ;
 int ubi_warn (TYPE_1__*,char*,int ) ;
 int vfree (int ) ;

__attribute__((used)) static int vol_cdev_release(struct inode *inode, struct file *file)
{
 struct ubi_volume_desc *desc = file->private_data;
 struct ubi_volume *vol = desc->vol;

 dbg_gen("release device %d, volume %d, mode %d",
  vol->ubi->ubi_num, vol->vol_id, desc->mode);

 if (vol->updating) {
  ubi_warn(vol->ubi, "update of volume %d not finished, volume is damaged",
    vol->vol_id);
  ubi_assert(!vol->changing_leb);
  vol->updating = 0;
  vfree(vol->upd_buf);
 } else if (vol->changing_leb) {
  dbg_gen("only %lld of %lld bytes received for atomic LEB change for volume %d:%d, cancel",
   vol->upd_received, vol->upd_bytes, vol->ubi->ubi_num,
   vol->vol_id);
  vol->changing_leb = 0;
  vfree(vol->upd_buf);
 }

 ubi_close_volume(desc);
 return 0;
}
