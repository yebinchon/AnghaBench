
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_volume_desc {struct ubi_volume* vol; } ;
struct ubi_volume {int used_bytes; int ubi; scalar_t__ updating; } ;
struct file {struct ubi_volume_desc* private_data; } ;
typedef int loff_t ;


 int EBUSY ;
 int fixed_size_llseek (struct file*,int ,int,int ) ;
 int ubi_err (int ,char*) ;

__attribute__((used)) static loff_t vol_cdev_llseek(struct file *file, loff_t offset, int origin)
{
 struct ubi_volume_desc *desc = file->private_data;
 struct ubi_volume *vol = desc->vol;

 if (vol->updating) {

  ubi_err(vol->ubi, "updating");
  return -EBUSY;
 }

 return fixed_size_llseek(file, offset, origin, vol->used_bytes);
}
