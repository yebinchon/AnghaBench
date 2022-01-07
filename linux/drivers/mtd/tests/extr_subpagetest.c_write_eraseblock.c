
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int loff_t ;
struct TYPE_3__ {int erasesize; } ;


 TYPE_1__* mtd ;
 int mtd_write (TYPE_1__*,int,size_t,size_t*,int ) ;
 int pr_err (char*,size_t) ;
 int prandom_bytes_state (int *,int ,size_t) ;
 int rnd_state ;
 size_t subpgsize ;
 scalar_t__ unlikely (int) ;
 int writebuf ;

__attribute__((used)) static int write_eraseblock(int ebnum)
{
 size_t written;
 int err = 0;
 loff_t addr = (loff_t)ebnum * mtd->erasesize;

 prandom_bytes_state(&rnd_state, writebuf, subpgsize);
 err = mtd_write(mtd, addr, subpgsize, &written, writebuf);
 if (unlikely(err || written != subpgsize)) {
  pr_err("error: write failed at %#llx\n",
         (long long)addr);
  if (written != subpgsize) {
   pr_err("  write size: %#x\n", subpgsize);
   pr_err("  written: %#zx\n", written);
  }
  return err ? err : -1;
 }

 addr += subpgsize;

 prandom_bytes_state(&rnd_state, writebuf, subpgsize);
 err = mtd_write(mtd, addr, subpgsize, &written, writebuf);
 if (unlikely(err || written != subpgsize)) {
  pr_err("error: write failed at %#llx\n",
         (long long)addr);
  if (written != subpgsize) {
   pr_err("  write size: %#x\n", subpgsize);
   pr_err("  written: %#zx\n", written);
  }
  return err ? err : -1;
 }

 return err;
}
