
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct sm_oob {int dummy; } ;
struct sm_ftl {int cis_block; scalar_t__ smallpagenand; scalar_t__ unstable; int readonly; TYPE_1__* trans; } ;
struct mtd_oob_ops {scalar_t__ oobretlen; scalar_t__ retlen; void* oobbuf; scalar_t__ ooblen; scalar_t__ ooboffs; int * datbuf; scalar_t__ len; int mode; } ;
struct mtd_info {int dummy; } ;
struct TYPE_2__ {struct mtd_info* mtd; } ;


 int BUG_ON (int ) ;
 int EIO ;
 int MTD_OPS_PLACE_OOB ;
 int MTD_OPS_RAW ;
 scalar_t__ SM_OOB_SIZE ;
 scalar_t__ SM_SECTOR_SIZE ;
 int WARN_ON (int) ;
 int dbg (char*,...) ;
 int mtd_write_oob (struct mtd_info*,int ,struct mtd_oob_ops*) ;
 int sm_mkoffset (struct sm_ftl*,int,int,int) ;
 int sm_recheck_media (struct sm_ftl*) ;

__attribute__((used)) static int sm_write_sector(struct sm_ftl *ftl,
      int zone, int block, int boffset,
      uint8_t *buffer, struct sm_oob *oob)
{
 struct mtd_oob_ops ops;
 struct mtd_info *mtd = ftl->trans->mtd;
 int ret;

 BUG_ON(ftl->readonly);

 if (zone == 0 && (block == ftl->cis_block || block == 0)) {
  dbg("attempted to write the CIS!");
  return -EIO;
 }

 if (ftl->unstable)
  return -EIO;

 ops.mode = ftl->smallpagenand ? MTD_OPS_RAW : MTD_OPS_PLACE_OOB;
 ops.len = SM_SECTOR_SIZE;
 ops.datbuf = buffer;
 ops.ooboffs = 0;
 ops.ooblen = SM_OOB_SIZE;
 ops.oobbuf = (void *)oob;

 ret = mtd_write_oob(mtd, sm_mkoffset(ftl, zone, block, boffset), &ops);



 if (ret) {
  dbg("write to block %d at zone %d, failed with error %d",
   block, zone, ret);

  sm_recheck_media(ftl);
  return ret;
 }


 WARN_ON(ops.oobretlen != SM_OOB_SIZE);
 WARN_ON(buffer && ops.retlen != SM_SECTOR_SIZE);

 return 0;
}
