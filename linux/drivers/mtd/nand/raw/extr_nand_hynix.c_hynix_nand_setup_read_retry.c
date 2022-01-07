
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nand_chip {int dummy; } ;
struct hynix_nand {TYPE_1__* read_retry; } ;
struct TYPE_2__ {int nregs; int * regs; int * values; } ;


 int NAND_HYNIX_CMD_APPLY_PARAMS ;
 int NAND_HYNIX_CMD_SET_PARAMS ;
 int hynix_nand_cmd_op (struct nand_chip*,int ) ;
 int hynix_nand_reg_write_op (struct nand_chip*,int ,int const) ;
 struct hynix_nand* nand_get_manufacturer_data (struct nand_chip*) ;

__attribute__((used)) static int hynix_nand_setup_read_retry(struct nand_chip *chip, int retry_mode)
{
 struct hynix_nand *hynix = nand_get_manufacturer_data(chip);
 const u8 *values;
 int i, ret;

 values = hynix->read_retry->values +
   (retry_mode * hynix->read_retry->nregs);


 ret = hynix_nand_cmd_op(chip, NAND_HYNIX_CMD_SET_PARAMS);
 if (ret)
  return ret;
 for (i = 0; i < hynix->read_retry->nregs; i++) {
  ret = hynix_nand_reg_write_op(chip, hynix->read_retry->regs[i],
           values[i]);
  if (ret)
   return ret;
 }


 return hynix_nand_cmd_op(chip, NAND_HYNIX_CMD_APPLY_PARAMS);
}
