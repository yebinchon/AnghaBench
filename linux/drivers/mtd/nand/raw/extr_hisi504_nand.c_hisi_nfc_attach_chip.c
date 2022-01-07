
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mode; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct mtd_info {int writesize; scalar_t__ oobsize; } ;
struct hinfc_host {int dev; int buffer; scalar_t__ dma_buffer; scalar_t__ dma_oob; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HINFC504_CON ;
 int HINFC504_CON_PAGEISZE_SHIFT ;
 int HINFC504_CON_PAGESIZE_MASK ;
 scalar_t__ NAND_ECC_HW ;
 int dev_err (int ,char*) ;
 int dmam_alloc_coherent (int ,scalar_t__,scalar_t__*,int ) ;
 int hinfc_read (struct hinfc_host*,int ) ;
 int hinfc_write (struct hinfc_host*,int,int ) ;
 int hisi_nfc_ecc_probe (struct hinfc_host*) ;
 int memset (int ,int,scalar_t__) ;
 struct hinfc_host* nand_get_controller_data (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int hisi_nfc_attach_chip(struct nand_chip *chip)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct hinfc_host *host = nand_get_controller_data(chip);
 int flag;

 host->buffer = dmam_alloc_coherent(host->dev,
        mtd->writesize + mtd->oobsize,
        &host->dma_buffer, GFP_KERNEL);
 if (!host->buffer)
  return -ENOMEM;

 host->dma_oob = host->dma_buffer + mtd->writesize;
 memset(host->buffer, 0xff, mtd->writesize + mtd->oobsize);

 flag = hinfc_read(host, HINFC504_CON);
 flag &= ~(HINFC504_CON_PAGESIZE_MASK << HINFC504_CON_PAGEISZE_SHIFT);
 switch (mtd->writesize) {
 case 2048:
  flag |= (0x001 << HINFC504_CON_PAGEISZE_SHIFT);
  break;




 default:
  dev_err(host->dev, "NON-2KB page size nand flash\n");
  return -EINVAL;
 }
 hinfc_write(host, flag, HINFC504_CON);

 if (chip->ecc.mode == NAND_ECC_HW)
  hisi_nfc_ecc_probe(host);

 return 0;
}
