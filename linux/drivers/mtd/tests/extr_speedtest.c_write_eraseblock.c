
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int loff_t ;
struct TYPE_3__ {int erasesize; } ;


 int iobuf ;
 TYPE_1__* mtd ;
 int mtdtest_write (TYPE_1__*,int,int,int ) ;

__attribute__((used)) static int write_eraseblock(int ebnum)
{
 loff_t addr = (loff_t)ebnum * mtd->erasesize;

 return mtdtest_write(mtd, addr, mtd->erasesize, iobuf);
}
