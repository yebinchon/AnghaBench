
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int loff_t ;
struct TYPE_3__ {int erasesize; int size; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__* bbt ;
 int ebcnt ;
 int errcnt ;
 unsigned char* kcalloc (int,int,int ) ;
 int kfree (unsigned char*) ;
 scalar_t__ memcmp (unsigned char*,unsigned char*,int) ;
 TYPE_1__* mtd ;
 int mtdtest_read (TYPE_1__*,int,int,unsigned char*) ;
 int pgsize ;
 int pr_err (char*) ;
 int pr_info (char*,...) ;

__attribute__((used)) static int crosstest(void)
{
 int err = 0, i;
 loff_t addr, addr0, addrn;
 unsigned char *pp1, *pp2, *pp3, *pp4;

 pr_info("crosstest\n");
 pp1 = kcalloc(pgsize, 4, GFP_KERNEL);
 if (!pp1)
  return -ENOMEM;
 pp2 = pp1 + pgsize;
 pp3 = pp2 + pgsize;
 pp4 = pp3 + pgsize;

 addr0 = 0;
 for (i = 0; i < ebcnt && bbt[i]; ++i)
  addr0 += mtd->erasesize;

 addrn = mtd->size;
 for (i = 0; i < ebcnt && bbt[ebcnt - i - 1]; ++i)
  addrn -= mtd->erasesize;


 addr = addrn - pgsize - pgsize;
 err = mtdtest_read(mtd, addr, pgsize, pp1);
 if (err) {
  kfree(pp1);
  return err;
 }


 addr = addrn - pgsize - pgsize - pgsize;
 err = mtdtest_read(mtd, addr, pgsize, pp1);
 if (err) {
  kfree(pp1);
  return err;
 }


 addr = addr0;
 pr_info("reading page at %#llx\n", (long long)addr);
 err = mtdtest_read(mtd, addr, pgsize, pp2);
 if (err) {
  kfree(pp1);
  return err;
 }


 addr = addrn - pgsize;
 pr_info("reading page at %#llx\n", (long long)addr);
 err = mtdtest_read(mtd, addr, pgsize, pp3);
 if (err) {
  kfree(pp1);
  return err;
 }


 addr = addr0;
 pr_info("reading page at %#llx\n", (long long)addr);
 err = mtdtest_read(mtd, addr, pgsize, pp4);
 if (err) {
  kfree(pp1);
  return err;
 }


 pr_info("verifying pages read at %#llx match\n",
        (long long)addr0);
 if (memcmp(pp2, pp4, pgsize)) {
  pr_err("verify failed!\n");
  errcnt += 1;
 } else if (!err)
  pr_info("crosstest ok\n");
 kfree(pp1);
 return err;
}
