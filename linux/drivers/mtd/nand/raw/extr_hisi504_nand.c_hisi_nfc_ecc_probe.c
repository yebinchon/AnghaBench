
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int strength; int write_page; int read_oob; int read_page; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct mtd_info {int writesize; } ;
struct hinfc_host {struct nand_chip chip; struct device* dev; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int HINFC504_CON ;
 int HINFC504_CON_ECCTYPE_MASK ;
 int HINFC504_CON_ECCTYPE_SHIFT ;
 int HINFC504_INTEN ;
 unsigned int HINFC504_INTEN_CE ;
 unsigned int HINFC504_INTEN_UE ;
 int dev_err (struct device*,char*,...) ;
 int hinfc_read (struct hinfc_host*,int ) ;
 int hinfc_write (struct hinfc_host*,unsigned int,int ) ;
 int hisi_nand_read_oob ;
 int hisi_nand_read_page_hwecc ;
 int hisi_nand_write_page_hwecc ;
 int hisi_ooblayout_ops ;
 int mtd_set_ooblayout (struct mtd_info*,int *) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int hisi_nfc_ecc_probe(struct hinfc_host *host)
{
 unsigned int flag;
 int size, strength, ecc_bits;
 struct device *dev = host->dev;
 struct nand_chip *chip = &host->chip;
 struct mtd_info *mtd = nand_to_mtd(chip);

 size = chip->ecc.size;
 strength = chip->ecc.strength;
 if (size != 1024) {
  dev_err(dev, "error ecc size: %d\n", size);
  return -EINVAL;
 }

 if ((size == 1024) && ((strength != 8) && (strength != 16) &&
    (strength != 24) && (strength != 40))) {
  dev_err(dev, "ecc size and strength do not match\n");
  return -EINVAL;
 }

 chip->ecc.size = size;
 chip->ecc.strength = strength;

 chip->ecc.read_page = hisi_nand_read_page_hwecc;
 chip->ecc.read_oob = hisi_nand_read_oob;
 chip->ecc.write_page = hisi_nand_write_page_hwecc;

 switch (chip->ecc.strength) {
 case 16:
  ecc_bits = 6;
  if (mtd->writesize == 2048)
   mtd_set_ooblayout(mtd, &hisi_ooblayout_ops);


  break;


 default:
  dev_err(dev, "not support strength: %d\n", chip->ecc.strength);
  return -EINVAL;
 }

 flag = hinfc_read(host, HINFC504_CON);

 flag |= ((ecc_bits & HINFC504_CON_ECCTYPE_MASK)
      << HINFC504_CON_ECCTYPE_SHIFT);
 hinfc_write(host, flag, HINFC504_CON);


 flag = hinfc_read(host, HINFC504_INTEN) & 0xfff;
 hinfc_write(host, flag | HINFC504_INTEN_UE | HINFC504_INTEN_CE,
      HINFC504_INTEN);

 return 0;
}
