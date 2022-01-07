
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int loff_t ;
struct TYPE_3__ {int erasesize; } ;


 int cond_resched () ;
 TYPE_1__* mtd ;
 int mtdtest_write (TYPE_1__*,int,int,int ) ;
 int prandom_bytes_state (int *,int ,int) ;
 int rnd_state ;
 int writebuf ;

__attribute__((used)) static int write_eraseblock(int ebnum)
{
 loff_t addr = (loff_t)ebnum * mtd->erasesize;

 prandom_bytes_state(&rnd_state, writebuf, mtd->erasesize);
 cond_resched();
 return mtdtest_write(mtd, addr, mtd->erasesize, writebuf);
}
