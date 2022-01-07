
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ loff_t ;
struct TYPE_5__ {scalar_t__ erasesize; } ;


 scalar_t__* bbt ;
 int ebcnt ;
 int errcnt ;
 scalar_t__ memcmp (int ,char*,int ) ;
 int memset (char*,int ,int ) ;
 TYPE_1__* mtd ;
 int mtdtest_erase_eraseblock (TYPE_1__*,int) ;
 int mtdtest_read (TYPE_1__*,scalar_t__,int ,char*) ;
 int mtdtest_write (TYPE_1__*,scalar_t__,int ,int ) ;
 int pgsize ;
 int pr_err (char*) ;
 int pr_info (char*,...) ;
 int prandom_bytes_state (int *,int ,int ) ;
 int rnd_state ;
 int strcpy (int ,char*) ;
 char* twopages ;
 int writebuf ;

__attribute__((used)) static int erasecrosstest(void)
{
 int err = 0, i, ebnum, ebnum2;
 loff_t addr0;
 char *readbuf = twopages;

 pr_info("erasecrosstest\n");

 ebnum = 0;
 addr0 = 0;
 for (i = 0; i < ebcnt && bbt[i]; ++i) {
  addr0 += mtd->erasesize;
  ebnum += 1;
 }

 ebnum2 = ebcnt - 1;
 while (ebnum2 && bbt[ebnum2])
  ebnum2 -= 1;

 pr_info("erasing block %d\n", ebnum);
 err = mtdtest_erase_eraseblock(mtd, ebnum);
 if (err)
  return err;

 pr_info("writing 1st page of block %d\n", ebnum);
 prandom_bytes_state(&rnd_state, writebuf, pgsize);
 strcpy(writebuf, "There is no data like this!");
 err = mtdtest_write(mtd, addr0, pgsize, writebuf);
 if (err)
  return err;

 pr_info("reading 1st page of block %d\n", ebnum);
 memset(readbuf, 0, pgsize);
 err = mtdtest_read(mtd, addr0, pgsize, readbuf);
 if (err)
  return err;

 pr_info("verifying 1st page of block %d\n", ebnum);
 if (memcmp(writebuf, readbuf, pgsize)) {
  pr_err("verify failed!\n");
  errcnt += 1;
  return -1;
 }

 pr_info("erasing block %d\n", ebnum);
 err = mtdtest_erase_eraseblock(mtd, ebnum);
 if (err)
  return err;

 pr_info("writing 1st page of block %d\n", ebnum);
 prandom_bytes_state(&rnd_state, writebuf, pgsize);
 strcpy(writebuf, "There is no data like this!");
 err = mtdtest_write(mtd, addr0, pgsize, writebuf);
 if (err)
  return err;

 pr_info("erasing block %d\n", ebnum2);
 err = mtdtest_erase_eraseblock(mtd, ebnum2);
 if (err)
  return err;

 pr_info("reading 1st page of block %d\n", ebnum);
 memset(readbuf, 0, pgsize);
 err = mtdtest_read(mtd, addr0, pgsize, readbuf);
 if (err)
  return err;

 pr_info("verifying 1st page of block %d\n", ebnum);
 if (memcmp(writebuf, readbuf, pgsize)) {
  pr_err("verify failed!\n");
  errcnt += 1;
  return -1;
 }

 if (!err)
  pr_info("erasecrosstest ok\n");
 return err;
}
