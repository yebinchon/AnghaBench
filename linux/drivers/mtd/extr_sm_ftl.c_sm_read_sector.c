
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct sm_oob {int reserved; } ;
struct sm_ftl {int cis_block; int cis_boffset; scalar_t__ smallpagenand; TYPE_1__* trans; } ;
struct mtd_oob_ops {scalar_t__ oobretlen; scalar_t__ retlen; int * datbuf; scalar_t__ len; void* oobbuf; scalar_t__ ooblen; scalar_t__ ooboffs; int mode; } ;
struct mtd_info {int dummy; } ;
struct TYPE_2__ {struct mtd_info* mtd; } ;


 int EIO ;
 int MTD_OPS_PLACE_OOB ;
 int MTD_OPS_RAW ;
 scalar_t__ SM_OOB_SIZE ;
 scalar_t__ SM_SECTOR_SIZE ;
 int WARN_ON (int) ;
 int dbg (char*,int,int,...) ;
 int is_power_of_2 (int) ;
 int memset (int *,int,scalar_t__) ;
 int mtd_is_bitflip_or_eccerr (int) ;
 scalar_t__ mtd_is_eccerr (int) ;
 int mtd_read_oob (struct mtd_info*,int ,struct mtd_oob_ops*) ;
 scalar_t__ sm_correct_sector (int *,struct sm_oob*) ;
 int sm_mkoffset (struct sm_ftl*,int,int,int) ;
 scalar_t__ sm_recheck_media (struct sm_ftl*) ;
 int sm_sector_valid (struct sm_oob*) ;

__attribute__((used)) static int sm_read_sector(struct sm_ftl *ftl,
     int zone, int block, int boffset,
     uint8_t *buffer, struct sm_oob *oob)
{
 struct mtd_info *mtd = ftl->trans->mtd;
 struct mtd_oob_ops ops;
 struct sm_oob tmp_oob;
 int ret = -EIO;
 int try = 0;


 if (block == -1) {
  memset(buffer, 0xFF, SM_SECTOR_SIZE);
  return 0;
 }


 if (!oob)
  oob = &tmp_oob;

 ops.mode = ftl->smallpagenand ? MTD_OPS_RAW : MTD_OPS_PLACE_OOB;
 ops.ooboffs = 0;
 ops.ooblen = SM_OOB_SIZE;
 ops.oobbuf = (void *)oob;
 ops.len = SM_SECTOR_SIZE;
 ops.datbuf = buffer;

again:
 if (try++) {


  if (zone == 0 && block == ftl->cis_block && boffset ==
   ftl->cis_boffset)
   return ret;


  if (try == 3 || sm_recheck_media(ftl))
   return ret;
 }



 ret = mtd_read_oob(mtd, sm_mkoffset(ftl, zone, block, boffset), &ops);


 if (ret != 0 && !mtd_is_bitflip_or_eccerr(ret)) {
  dbg("read of block %d at zone %d, failed due to error (%d)",
   block, zone, ret);
  goto again;
 }


 if (oob->reserved != 0xFFFFFFFF && !is_power_of_2(~oob->reserved))
  goto again;


 WARN_ON(ops.oobretlen != SM_OOB_SIZE);
 WARN_ON(buffer && ops.retlen != SM_SECTOR_SIZE);

 if (!buffer)
  return 0;


 if (!sm_sector_valid(oob)) {
  dbg("read of block %d at zone %d, failed because it is marked"
   " as bad" , block, zone);
  goto again;
 }


 if (mtd_is_eccerr(ret) ||
  (ftl->smallpagenand && sm_correct_sector(buffer, oob))) {

  dbg("read of block %d at zone %d, failed due to ECC error",
   block, zone);
  goto again;
 }

 return 0;
}
