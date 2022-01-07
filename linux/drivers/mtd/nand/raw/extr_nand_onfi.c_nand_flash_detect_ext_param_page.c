
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct onfi_ext_section {scalar_t__ type; int length; } ;
struct onfi_ext_param_page {struct onfi_ext_section* sections; int sig; int crc; } ;
struct onfi_ext_ecc_info {int codeword_size; int ecc_bits; } ;
struct nand_onfi_params {int num_of_param_pages; int ext_param_page_length; } ;
struct TYPE_3__ {int step_size; int strength; } ;
struct TYPE_4__ {TYPE_1__ eccreq; } ;
struct nand_chip {TYPE_2__ base; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ONFI_CRC_BASE ;
 int ONFI_EXT_SECTION_MAX ;
 scalar_t__ ONFI_SECTION_TYPE_2 ;
 int kfree (struct onfi_ext_param_page*) ;
 struct onfi_ext_param_page* kmalloc (int,int ) ;
 scalar_t__ le16_to_cpu (int ) ;
 int nand_change_read_column_op (struct nand_chip*,int,struct onfi_ext_param_page*,int,int) ;
 int nand_read_param_page_op (struct nand_chip*,int ,int *,int ) ;
 scalar_t__ onfi_crc16 (int ,int *,int) ;
 int pr_debug (char*) ;
 scalar_t__ strncmp (int ,char*,int) ;

__attribute__((used)) static int nand_flash_detect_ext_param_page(struct nand_chip *chip,
         struct nand_onfi_params *p)
{
 struct onfi_ext_param_page *ep;
 struct onfi_ext_section *s;
 struct onfi_ext_ecc_info *ecc;
 uint8_t *cursor;
 int ret;
 int len;
 int i;

 len = le16_to_cpu(p->ext_param_page_length) * 16;
 ep = kmalloc(len, GFP_KERNEL);
 if (!ep)
  return -ENOMEM;


 ret = nand_read_param_page_op(chip, 0, ((void*)0), 0);
 if (ret)
  goto ext_out;


 ret = nand_change_read_column_op(chip,
      sizeof(*p) * p->num_of_param_pages,
      ep, len, 1);
 if (ret)
  goto ext_out;

 ret = -EINVAL;
 if ((onfi_crc16(ONFI_CRC_BASE, ((uint8_t *)ep) + 2, len - 2)
  != le16_to_cpu(ep->crc))) {
  pr_debug("fail in the CRC.\n");
  goto ext_out;
 }





 if (strncmp(ep->sig, "EPPS", 4)) {
  pr_debug("The signature is invalid.\n");
  goto ext_out;
 }


 cursor = (uint8_t *)(ep + 1);
 for (i = 0; i < ONFI_EXT_SECTION_MAX; i++) {
  s = ep->sections + i;
  if (s->type == ONFI_SECTION_TYPE_2)
   break;
  cursor += s->length * 16;
 }
 if (i == ONFI_EXT_SECTION_MAX) {
  pr_debug("We can not find the ECC section.\n");
  goto ext_out;
 }


 ecc = (struct onfi_ext_ecc_info *)cursor;

 if (!ecc->codeword_size) {
  pr_debug("Invalid codeword size\n");
  goto ext_out;
 }

 chip->base.eccreq.strength = ecc->ecc_bits;
 chip->base.eccreq.step_size = 1 << ecc->codeword_size;
 ret = 0;

ext_out:
 kfree(ep);
 return ret;
}
