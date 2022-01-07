
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int corrected; int failed; } ;
struct mtd_info {scalar_t__ size; TYPE_1__ ecc_stats; } ;
struct mtd_concat {int num_subdev; struct mtd_info** subdev; } ;
typedef scalar_t__ loff_t ;


 struct mtd_concat* CONCAT (struct mtd_info*) ;
 int EINVAL ;
 scalar_t__ mtd_is_bitflip (int) ;
 scalar_t__ mtd_is_eccerr (int) ;
 int mtd_read (struct mtd_info*,scalar_t__,size_t,size_t*,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
concat_read(struct mtd_info *mtd, loff_t from, size_t len,
     size_t * retlen, u_char * buf)
{
 struct mtd_concat *concat = CONCAT(mtd);
 int ret = 0, err;
 int i;

 for (i = 0; i < concat->num_subdev; i++) {
  struct mtd_info *subdev = concat->subdev[i];
  size_t size, retsize;

  if (from >= subdev->size) {

   size = 0;
   from -= subdev->size;
   continue;
  }
  if (from + len > subdev->size)

   size = subdev->size - from;
  else

   size = len;

  err = mtd_read(subdev, from, size, &retsize, buf);


  if (unlikely(err)) {
   if (mtd_is_eccerr(err)) {
    mtd->ecc_stats.failed++;
    ret = err;
   } else if (mtd_is_bitflip(err)) {
    mtd->ecc_stats.corrected++;

    if (!ret)
     ret = err;
   } else
    return err;
  }

  *retlen += retsize;
  len -= size;
  if (len == 0)
   return ret;

  buf += size;
  from = 0;
 }
 return -EINVAL;
}
