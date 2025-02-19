
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_device {int peb_count; int peb_size; scalar_t__ bad_allowed; struct mtd_info* mtd; } ;
struct mtd_info {int dummy; } ;
typedef int loff_t ;


 int dbg_io (char*,int) ;
 int mtd_block_isbad (struct mtd_info*,int) ;
 int ubi_assert (int) ;
 int ubi_err (struct ubi_device const*,char*,int,int) ;

int ubi_io_is_bad(const struct ubi_device *ubi, int pnum)
{
 struct mtd_info *mtd = ubi->mtd;

 ubi_assert(pnum >= 0 && pnum < ubi->peb_count);

 if (ubi->bad_allowed) {
  int ret;

  ret = mtd_block_isbad(mtd, (loff_t)pnum * ubi->peb_size);
  if (ret < 0)
   ubi_err(ubi, "error %d while checking if PEB %d is bad",
    ret, pnum);
  else if (ret)
   dbg_io("PEB %d is bad", pnum);
  return ret;
 }

 return 0;
}
