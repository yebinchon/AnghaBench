
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nand_chip {int dummy; } ;
struct fsl_elbc_mtd {int dev; TYPE_1__* ctrl; } ;
struct fsl_elbc_fcm_ctrl {scalar_t__ index; scalar_t__ read_bytes; int * addr; } ;
struct TYPE_2__ {struct fsl_elbc_fcm_ctrl* nand; } ;


 int ERR_BYTE ;
 int dev_err (int ,char*) ;
 int in_8 (int *) ;
 struct fsl_elbc_mtd* nand_get_controller_data (struct nand_chip*) ;

__attribute__((used)) static u8 fsl_elbc_read_byte(struct nand_chip *chip)
{
 struct fsl_elbc_mtd *priv = nand_get_controller_data(chip);
 struct fsl_elbc_fcm_ctrl *elbc_fcm_ctrl = priv->ctrl->nand;


 if (elbc_fcm_ctrl->index < elbc_fcm_ctrl->read_bytes)
  return in_8(&elbc_fcm_ctrl->addr[elbc_fcm_ctrl->index++]);

 dev_err(priv->dev, "read_byte beyond end of buffer\n");
 return ERR_BYTE;
}
