
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct nand_chip {int oob_poi; } ;
struct TYPE_2__ {int failed; } ;
struct mtd_info {TYPE_1__ ecc_stats; int oobsize; int writesize; } ;
struct fsl_lbc_ctrl {struct fsl_elbc_fcm_ctrl* nand; } ;
struct fsl_elbc_mtd {struct fsl_lbc_ctrl* ctrl; } ;
struct fsl_elbc_fcm_ctrl {int max_bitflips; } ;


 int NAND_STATUS_FAIL ;
 int fsl_elbc_read_buf (struct nand_chip*,int ,int ) ;
 int fsl_elbc_wait (struct nand_chip*) ;
 struct fsl_elbc_mtd* nand_get_controller_data (struct nand_chip*) ;
 int nand_read_page_op (struct nand_chip*,int,int ,int *,int ) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int fsl_elbc_read_page(struct nand_chip *chip, uint8_t *buf,
         int oob_required, int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct fsl_elbc_mtd *priv = nand_get_controller_data(chip);
 struct fsl_lbc_ctrl *ctrl = priv->ctrl;
 struct fsl_elbc_fcm_ctrl *elbc_fcm_ctrl = ctrl->nand;

 nand_read_page_op(chip, page, 0, buf, mtd->writesize);
 if (oob_required)
  fsl_elbc_read_buf(chip, chip->oob_poi, mtd->oobsize);

 if (fsl_elbc_wait(chip) & NAND_STATUS_FAIL)
  mtd->ecc_stats.failed++;

 return elbc_fcm_ctrl->max_bitflips;
}
