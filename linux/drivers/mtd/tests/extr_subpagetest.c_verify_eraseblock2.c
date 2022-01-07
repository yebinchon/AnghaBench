
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int loff_t ;
struct TYPE_3__ {int erasesize; } ;


 int clear_data (int ,int) ;
 int errcnt ;
 int memcmp (int ,int ,int) ;
 TYPE_1__* mtd ;
 scalar_t__ mtd_is_bitflip (int) ;
 int mtd_read (TYPE_1__*,int,int,size_t*,int ) ;
 int pr_err (char*,long long) ;
 int pr_info (char*,long long) ;
 int prandom_bytes_state (int *,int ,int) ;
 int readbuf ;
 int rnd_state ;
 int subpgsize ;
 scalar_t__ unlikely (int) ;
 int writebuf ;

__attribute__((used)) static int verify_eraseblock2(int ebnum)
{
 size_t read;
 int err = 0, k;
 loff_t addr = (loff_t)ebnum * mtd->erasesize;

 for (k = 1; k < 33; ++k) {
  if (addr + (subpgsize * k) > (loff_t)(ebnum + 1) * mtd->erasesize)
   break;
  prandom_bytes_state(&rnd_state, writebuf, subpgsize * k);
  clear_data(readbuf, subpgsize * k);
  err = mtd_read(mtd, addr, subpgsize * k, &read, readbuf);
  if (unlikely(err || read != subpgsize * k)) {
   if (mtd_is_bitflip(err) && read == subpgsize * k) {
    pr_info("ECC correction at %#llx\n",
           (long long)addr);
    err = 0;
   } else {
    pr_err("error: read failed at "
           "%#llx\n", (long long)addr);
    return err ? err : -1;
   }
  }
  if (unlikely(memcmp(readbuf, writebuf, subpgsize * k))) {
   pr_err("error: verify failed at %#llx\n",
          (long long)addr);
   errcnt += 1;
  }
  addr += subpgsize * k;
 }

 return err;
}
