
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int loff_t ;
struct TYPE_3__ {int erasesize; } ;


 int clear_data (int ,size_t) ;
 int errcnt ;
 int memcmp (int ,int ,size_t) ;
 int memset (int ,int,size_t) ;
 TYPE_1__* mtd ;
 scalar_t__ mtd_is_bitflip (int) ;
 int mtd_read (TYPE_1__*,int,size_t,size_t*,int ) ;
 int pr_err (char*,long long) ;
 int pr_info (char*,long long) ;
 int readbuf ;
 size_t subpgsize ;
 scalar_t__ unlikely (int) ;
 int writebuf ;

__attribute__((used)) static int verify_eraseblock_ff(int ebnum)
{
 uint32_t j;
 size_t read;
 int err = 0;
 loff_t addr = (loff_t)ebnum * mtd->erasesize;

 memset(writebuf, 0xff, subpgsize);
 for (j = 0; j < mtd->erasesize / subpgsize; ++j) {
  clear_data(readbuf, subpgsize);
  err = mtd_read(mtd, addr, subpgsize, &read, readbuf);
  if (unlikely(err || read != subpgsize)) {
   if (mtd_is_bitflip(err) && read == subpgsize) {
    pr_info("ECC correction at %#llx\n",
           (long long)addr);
    err = 0;
   } else {
    pr_err("error: read failed at "
           "%#llx\n", (long long)addr);
    return err ? err : -1;
   }
  }
  if (unlikely(memcmp(readbuf, writebuf, subpgsize))) {
   pr_err("error: verify 0xff failed at "
          "%#llx\n", (long long)addr);
   errcnt += 1;
  }
  addr += subpgsize;
 }

 return err;
}
