
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;


 int cond_resched () ;
 scalar_t__ is_block_bad (struct mtd_info*,unsigned int) ;
 int mtd_can_have_bb (struct mtd_info*) ;
 int pr_info (char*,...) ;

int mtdtest_scan_for_bad_eraseblocks(struct mtd_info *mtd, unsigned char *bbt,
     unsigned int eb, int ebcnt)
{
 int i, bad = 0;

 if (!mtd_can_have_bb(mtd))
  return 0;

 pr_info("scanning for bad eraseblocks\n");
 for (i = 0; i < ebcnt; ++i) {
  bbt[i] = is_block_bad(mtd, eb + i) ? 1 : 0;
  if (bbt[i])
   bad += 1;
  cond_resched();
 }
 pr_info("scanned %d eraseblocks, %d are bad\n", i, bad);

 return 0;
}
