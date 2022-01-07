
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mtd_oob_ops {scalar_t__ oobretlen; int * datbuf; int * oobbuf; scalar_t__ ooblen; scalar_t__ ooboffs; int mode; } ;
struct mtd_info {int dummy; } ;
typedef int loff_t ;


 int MTD_OPS_RAW ;
 scalar_t__ OOB_SIZE ;
 int mtd_read_oob (struct mtd_info*,int ,struct mtd_oob_ops*) ;

__attribute__((used)) static int read_raw_oob(struct mtd_info *mtd, loff_t offs, uint8_t *buf)
{
 struct mtd_oob_ops ops;
 int ret;

 ops.mode = MTD_OPS_RAW;
 ops.ooboffs = 0;
 ops.ooblen = OOB_SIZE;
 ops.oobbuf = buf;
 ops.datbuf = ((void*)0);

 ret = mtd_read_oob(mtd, offs, &ops);
 if (ret < 0 || ops.oobretlen != OOB_SIZE)
  return -1;

 return 0;
}
