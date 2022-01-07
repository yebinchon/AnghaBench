
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nand_chip {int dummy; } ;
struct fsl_elbc_mtd {TYPE_1__* ctrl; } ;
struct fsl_elbc_fcm_ctrl {scalar_t__ status; int mdr; } ;
struct TYPE_2__ {struct fsl_elbc_fcm_ctrl* nand; } ;


 scalar_t__ LTESR_CC ;
 int NAND_STATUS_FAIL ;
 int NAND_STATUS_WP ;
 struct fsl_elbc_mtd* nand_get_controller_data (struct nand_chip*) ;

__attribute__((used)) static int fsl_elbc_wait(struct nand_chip *chip)
{
 struct fsl_elbc_mtd *priv = nand_get_controller_data(chip);
 struct fsl_elbc_fcm_ctrl *elbc_fcm_ctrl = priv->ctrl->nand;

 if (elbc_fcm_ctrl->status != LTESR_CC)
  return NAND_STATUS_FAIL;




 return (elbc_fcm_ctrl->mdr & 0xff) | NAND_STATUS_WP;
}
