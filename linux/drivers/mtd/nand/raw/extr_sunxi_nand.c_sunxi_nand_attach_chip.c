
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nand_ecc_ctrl {int mode; int strength; scalar_t__ size; } ;
struct TYPE_3__ {int strength; scalar_t__ step_size; } ;
struct TYPE_4__ {TYPE_1__ eccreq; } ;
struct nand_chip {int bbt_options; int options; TYPE_2__ base; struct nand_ecc_ctrl ecc; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int NAND_BBT_NO_OOB ;
 int NAND_BBT_USE_FLASH ;



 int NAND_NEED_SCRAMBLING ;
 int NAND_NO_SUBPAGE_WRITE ;
 int NAND_SUBPAGE_READ ;
 struct device_node* nand_get_flash_node (struct nand_chip*) ;
 int sunxi_nand_hw_ecc_ctrl_init (struct nand_chip*,struct nand_ecc_ctrl*,struct device_node*) ;

__attribute__((used)) static int sunxi_nand_attach_chip(struct nand_chip *nand)
{
 struct nand_ecc_ctrl *ecc = &nand->ecc;
 struct device_node *np = nand_get_flash_node(nand);
 int ret;

 if (nand->bbt_options & NAND_BBT_USE_FLASH)
  nand->bbt_options |= NAND_BBT_NO_OOB;

 if (nand->options & NAND_NEED_SCRAMBLING)
  nand->options |= NAND_NO_SUBPAGE_WRITE;

 nand->options |= NAND_SUBPAGE_READ;

 if (!ecc->size) {
  ecc->size = nand->base.eccreq.step_size;
  ecc->strength = nand->base.eccreq.strength;
 }

 if (!ecc->size || !ecc->strength)
  return -EINVAL;

 switch (ecc->mode) {
 case 130:
  ret = sunxi_nand_hw_ecc_ctrl_init(nand, ecc, np);
  if (ret)
   return ret;
  break;
 case 129:
 case 128:
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
