
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mtd_oob_ops {scalar_t__ len; scalar_t__ retlen; int * oobbuf; int datbuf; scalar_t__ ooboffs; scalar_t__ oobretlen; scalar_t__ ooblen; int mode; } ;
struct TYPE_3__ {scalar_t__ writesize; } ;


 int EIO ;
 int MTD_OPS_RAW ;
 TYPE_1__* mtd ;
 int mtd_write_oob (TYPE_1__*,int ,struct mtd_oob_ops*) ;
 int offset ;
 int pr_err (char*,int) ;
 int pr_info (char*) ;
 int wbuffer ;

__attribute__((used)) static int rewrite_page(int log)
{
 int err = 0;
 struct mtd_oob_ops ops;

 if (log)
  pr_info("rewrite page\n");

 ops.mode = MTD_OPS_RAW;
 ops.len = mtd->writesize;
 ops.retlen = 0;
 ops.ooblen = 0;
 ops.oobretlen = 0;
 ops.ooboffs = 0;
 ops.datbuf = wbuffer;
 ops.oobbuf = ((void*)0);

 err = mtd_write_oob(mtd, offset, &ops);
 if (err || ops.retlen != mtd->writesize) {
  pr_err("error: write_oob failed (%d)\n", err);
  if (!err)
   err = -EIO;
 }

 return err;
}
