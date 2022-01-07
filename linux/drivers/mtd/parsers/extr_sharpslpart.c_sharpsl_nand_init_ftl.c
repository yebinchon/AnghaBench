
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sharpsl_ftl {unsigned int logmax; unsigned int* log2phy; } ;
struct mtd_info {int erasesize; int oobsize; } ;
typedef int loff_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SHARPSL_FTL_PART_SIZE ;
 unsigned int UINT_MAX ;
 int kfree (int *) ;
 unsigned int* kmalloc_array (unsigned int,int,int ) ;
 int * kzalloc (int ,int ) ;
 scalar_t__ mtd_block_isbad (struct mtd_info*,int) ;
 unsigned int mtd_div_by_eb (int ,struct mtd_info*) ;
 int pr_info (char*,unsigned int,unsigned int,unsigned int) ;
 unsigned int sharpsl_nand_get_logical_num (int *) ;
 scalar_t__ sharpsl_nand_read_oob (struct mtd_info*,int,int *) ;

__attribute__((used)) static int sharpsl_nand_init_ftl(struct mtd_info *mtd, struct sharpsl_ftl *ftl)
{
 unsigned int block_num, log_num, phymax;
 loff_t block_adr;
 u8 *oob;
 int i, ret;

 oob = kzalloc(mtd->oobsize, GFP_KERNEL);
 if (!oob)
  return -ENOMEM;

 phymax = mtd_div_by_eb(SHARPSL_FTL_PART_SIZE, mtd);


 ftl->logmax = ((phymax * 95) / 100) - 1;

 ftl->log2phy = kmalloc_array(ftl->logmax, sizeof(*ftl->log2phy),
         GFP_KERNEL);
 if (!ftl->log2phy) {
  ret = -ENOMEM;
  goto exit;
 }


 for (i = 0; i < ftl->logmax; i++)
  ftl->log2phy[i] = UINT_MAX;


 for (block_num = 0; block_num < phymax; block_num++) {
  block_adr = (loff_t)block_num * mtd->erasesize;

  if (mtd_block_isbad(mtd, block_adr))
   continue;

  if (sharpsl_nand_read_oob(mtd, block_adr, oob))
   continue;


  log_num = sharpsl_nand_get_logical_num(oob);


  if (log_num > 0 && log_num < ftl->logmax) {
   if (ftl->log2phy[log_num] == UINT_MAX)
    ftl->log2phy[log_num] = block_num;
  }
 }

 pr_info("Sharp SL FTL: %d blocks used (%d logical, %d reserved)\n",
  phymax, ftl->logmax, phymax - ftl->logmax);

 ret = 0;
exit:
 kfree(oob);
 return ret;
}
