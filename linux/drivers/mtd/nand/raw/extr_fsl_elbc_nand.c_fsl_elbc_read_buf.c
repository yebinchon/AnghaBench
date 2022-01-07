
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nand_chip {int dummy; } ;
struct fsl_elbc_mtd {int dev; TYPE_1__* ctrl; } ;
struct fsl_elbc_fcm_ctrl {size_t index; int * addr; scalar_t__ read_bytes; } ;
struct TYPE_2__ {struct fsl_elbc_fcm_ctrl* nand; } ;


 int dev_err (int ,char*,int,int) ;
 int memcpy_fromio (int *,int *,int) ;
 int min (unsigned int,scalar_t__) ;
 struct fsl_elbc_mtd* nand_get_controller_data (struct nand_chip*) ;

__attribute__((used)) static void fsl_elbc_read_buf(struct nand_chip *chip, u8 *buf, int len)
{
 struct fsl_elbc_mtd *priv = nand_get_controller_data(chip);
 struct fsl_elbc_fcm_ctrl *elbc_fcm_ctrl = priv->ctrl->nand;
 int avail;

 if (len < 0)
  return;

 avail = min((unsigned int)len,
   elbc_fcm_ctrl->read_bytes - elbc_fcm_ctrl->index);
 memcpy_fromio(buf, &elbc_fcm_ctrl->addr[elbc_fcm_ctrl->index], avail);
 elbc_fcm_ctrl->index += avail;

 if (len > avail)
  dev_err(priv->dev,
          "read_buf beyond end of buffer "
          "(%d requested, %d available)\n",
          len, avail);
}
