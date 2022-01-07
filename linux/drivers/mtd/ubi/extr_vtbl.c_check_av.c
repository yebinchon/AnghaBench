
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_volume {scalar_t__ reserved_pebs; scalar_t__ vol_type; scalar_t__ data_pad; int ubi; } ;
struct ubi_ainf_volume {scalar_t__ highest_lnum; scalar_t__ leb_count; scalar_t__ vol_type; scalar_t__ used_ebs; scalar_t__ data_pad; } ;


 int EINVAL ;
 int ubi_dump_av (struct ubi_ainf_volume const*) ;
 int ubi_dump_vol_info (struct ubi_volume const*) ;
 int ubi_err (int ,char*,int) ;

__attribute__((used)) static int check_av(const struct ubi_volume *vol,
      const struct ubi_ainf_volume *av)
{
 int err;

 if (av->highest_lnum >= vol->reserved_pebs) {
  err = 1;
  goto bad;
 }
 if (av->leb_count > vol->reserved_pebs) {
  err = 2;
  goto bad;
 }
 if (av->vol_type != vol->vol_type) {
  err = 3;
  goto bad;
 }
 if (av->used_ebs > vol->reserved_pebs) {
  err = 4;
  goto bad;
 }
 if (av->data_pad != vol->data_pad) {
  err = 5;
  goto bad;
 }
 return 0;

bad:
 ubi_err(vol->ubi, "bad attaching information, error %d", err);
 ubi_dump_av(av);
 ubi_dump_vol_info(vol);
 return -EINVAL;
}
