
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int mode; int bytes; int strength; int write_oob; int write_page_raw; int write_page; int read_oob; int read_page_raw; int read_page; } ;
struct nand_chip {int bbt_options; TYPE_3__ ecc; int * bbt_md; int * bbt_td; } ;
struct mxc_nand_host {int eccsize; int used_oobsize; TYPE_2__* devtype_data; scalar_t__ data_buf; } ;
struct TYPE_4__ {struct device* parent; } ;
struct mtd_info {scalar_t__ oobsize; scalar_t__ writesize; TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int (* preset ) (struct mtd_info*) ;} ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NAND_BBT_USE_FLASH ;


 int bbt_main_descr ;
 int bbt_mirror_descr ;
 int devm_kfree (struct device*,void*) ;
 scalar_t__ devm_kzalloc (struct device*,scalar_t__,int ) ;
 scalar_t__ is_imx21_nfc (struct mxc_nand_host*) ;
 scalar_t__ is_imx27_nfc (struct mxc_nand_host*) ;
 int min (scalar_t__,unsigned int) ;
 int mxc_nand_read_oob ;
 int mxc_nand_read_page ;
 int mxc_nand_read_page_raw ;
 int mxc_nand_write_oob ;
 int mxc_nand_write_page_ecc ;
 int mxc_nand_write_page_raw ;
 struct mxc_nand_host* nand_get_controller_data (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int stub1 (struct mtd_info*) ;

__attribute__((used)) static int mxcnd_attach_chip(struct nand_chip *chip)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct mxc_nand_host *host = nand_get_controller_data(chip);
 struct device *dev = mtd->dev.parent;

 switch (chip->ecc.mode) {
 case 129:
  chip->ecc.read_page = mxc_nand_read_page;
  chip->ecc.read_page_raw = mxc_nand_read_page_raw;
  chip->ecc.read_oob = mxc_nand_read_oob;
  chip->ecc.write_page = mxc_nand_write_page_ecc;
  chip->ecc.write_page_raw = mxc_nand_write_page_raw;
  chip->ecc.write_oob = mxc_nand_write_oob;
  break;

 case 128:
  break;

 default:
  return -EINVAL;
 }

 if (chip->bbt_options & NAND_BBT_USE_FLASH) {
  chip->bbt_td = &bbt_main_descr;
  chip->bbt_md = &bbt_mirror_descr;
 }


 devm_kfree(dev, (void *)host->data_buf);
 host->data_buf = devm_kzalloc(dev, mtd->writesize + mtd->oobsize,
          GFP_KERNEL);
 if (!host->data_buf)
  return -ENOMEM;


 host->devtype_data->preset(mtd);

 if (!chip->ecc.bytes) {
  if (host->eccsize == 8)
   chip->ecc.bytes = 18;
  else if (host->eccsize == 4)
   chip->ecc.bytes = 9;
 }
 host->used_oobsize = min(mtd->oobsize, 218U);

 if (chip->ecc.mode == 129) {
  if (is_imx21_nfc(host) || is_imx27_nfc(host))
   chip->ecc.strength = 1;
  else
   chip->ecc.strength = (host->eccsize == 4) ? 4 : 8;
 }

 return 0;
}
