
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_volume_desc {scalar_t__ mode; struct ubi_volume* vol; } ;
struct ubi_volume {scalar_t__ vol_type; scalar_t__ upd_marker; int vol_id; struct ubi_device* ubi; } ;
struct ubi_device {int dummy; } ;


 int EBADF ;
 int EINVAL ;
 int EROFS ;
 scalar_t__ UBI_READONLY ;
 scalar_t__ UBI_STATIC_VOLUME ;
 int dbg_gen (char*,int ,int) ;
 int ubi_eba_unmap_leb (struct ubi_device*,struct ubi_volume*,int) ;
 int ubi_leb_valid (struct ubi_volume*,int) ;

int ubi_leb_unmap(struct ubi_volume_desc *desc, int lnum)
{
 struct ubi_volume *vol = desc->vol;
 struct ubi_device *ubi = vol->ubi;

 dbg_gen("unmap LEB %d:%d", vol->vol_id, lnum);

 if (desc->mode == UBI_READONLY || vol->vol_type == UBI_STATIC_VOLUME)
  return -EROFS;

 if (!ubi_leb_valid(vol, lnum))
  return -EINVAL;

 if (vol->upd_marker)
  return -EBADF;

 return ubi_eba_unmap_leb(ubi, vol, lnum);
}
