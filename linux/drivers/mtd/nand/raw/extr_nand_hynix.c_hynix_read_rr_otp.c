
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct hynix_read_retry_otp {int nregs; int* regs; int size; int page; int * values; } ;


 int NAND_HYNIX_CMD_APPLY_PARAMS ;
 int NAND_HYNIX_CMD_SET_PARAMS ;
 int hynix_nand_cmd_op (struct nand_chip*,int) ;
 int hynix_nand_reg_write_op (struct nand_chip*,int,int ) ;
 int nand_read_page_op (struct nand_chip*,int ,int ,void*,int ) ;
 int nand_reset_op (struct nand_chip*) ;

__attribute__((used)) static int hynix_read_rr_otp(struct nand_chip *chip,
        const struct hynix_read_retry_otp *info,
        void *buf)
{
 int i, ret;

 ret = nand_reset_op(chip);
 if (ret)
  return ret;

 ret = hynix_nand_cmd_op(chip, NAND_HYNIX_CMD_SET_PARAMS);
 if (ret)
  return ret;

 for (i = 0; i < info->nregs; i++) {
  ret = hynix_nand_reg_write_op(chip, info->regs[i],
           info->values[i]);
  if (ret)
   return ret;
 }

 ret = hynix_nand_cmd_op(chip, NAND_HYNIX_CMD_APPLY_PARAMS);
 if (ret)
  return ret;


 ret = hynix_nand_cmd_op(chip, 0x17);
 if (ret)
  return ret;

 ret = hynix_nand_cmd_op(chip, 0x4);
 if (ret)
  return ret;

 ret = hynix_nand_cmd_op(chip, 0x19);
 if (ret)
  return ret;


 ret = nand_read_page_op(chip, info->page, 0, buf, info->size);
 if (ret)
  return ret;


 ret = nand_reset_op(chip);
 if (ret)
  return ret;

 ret = hynix_nand_cmd_op(chip, NAND_HYNIX_CMD_SET_PARAMS);
 if (ret)
  return ret;

 ret = hynix_nand_reg_write_op(chip, 0x38, 0);
 if (ret)
  return ret;

 ret = hynix_nand_cmd_op(chip, NAND_HYNIX_CMD_APPLY_PARAMS);
 if (ret)
  return ret;

 return nand_read_page_op(chip, 0, 0, ((void*)0), 0);
}
