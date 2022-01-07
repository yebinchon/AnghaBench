
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nand_chip {int dummy; } ;
struct mtd_info {unsigned int writesize; unsigned int oobsize; } ;
struct fsl_elbc_mtd {int dev; TYPE_1__* ctrl; } ;
struct fsl_elbc_fcm_ctrl {unsigned int index; int * addr; scalar_t__ status; } ;
struct TYPE_2__ {struct fsl_elbc_fcm_ctrl* nand; } ;


 int dev_err (int ,char*,int,...) ;
 int in_8 (int *) ;
 int memcpy_toio (int *,int const*,int) ;
 struct fsl_elbc_mtd* nand_get_controller_data (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static void fsl_elbc_write_buf(struct nand_chip *chip, const u8 *buf, int len)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct fsl_elbc_mtd *priv = nand_get_controller_data(chip);
 struct fsl_elbc_fcm_ctrl *elbc_fcm_ctrl = priv->ctrl->nand;
 unsigned int bufsize = mtd->writesize + mtd->oobsize;

 if (len <= 0) {
  dev_err(priv->dev, "write_buf of %d bytes", len);
  elbc_fcm_ctrl->status = 0;
  return;
 }

 if ((unsigned int)len > bufsize - elbc_fcm_ctrl->index) {
  dev_err(priv->dev,
          "write_buf beyond end of buffer "
          "(%d requested, %u available)\n",
   len, bufsize - elbc_fcm_ctrl->index);
  len = bufsize - elbc_fcm_ctrl->index;
 }

 memcpy_toio(&elbc_fcm_ctrl->addr[elbc_fcm_ctrl->index], buf, len);







 in_8(&elbc_fcm_ctrl->addr[elbc_fcm_ctrl->index] + len - 1);

 elbc_fcm_ctrl->index += len;
}
