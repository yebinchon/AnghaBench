
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct mtd_info {scalar_t__ size; } ;
struct mtd_concat {int num_subdev; struct mtd_info** subdev; } ;
typedef scalar_t__ loff_t ;


 struct mtd_concat* CONCAT (struct mtd_info*) ;
 int EINVAL ;
 int mtd_is_locked (struct mtd_info*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int concat_is_locked(struct mtd_info *mtd, loff_t ofs, uint64_t len)
{
 struct mtd_concat *concat = CONCAT(mtd);
 int i, err = -EINVAL;

 for (i = 0; i < concat->num_subdev; i++) {
  struct mtd_info *subdev = concat->subdev[i];

  if (ofs >= subdev->size) {
   ofs -= subdev->size;
   continue;
  }

  if (ofs + len > subdev->size)
   break;

  return mtd_is_locked(subdev, ofs, len);
 }

 return err;
}
