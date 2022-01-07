
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int oob_poi; } ;
struct mtd_info {int oobsize; } ;
struct hinfc_host {int irq_status; } ;


 int EBADMSG ;
 int HINFC504_INTS_UE ;
 struct hinfc_host* nand_get_controller_data (struct nand_chip*) ;
 int nand_read_oob_op (struct nand_chip*,int,int ,int ,int ) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int hisi_nand_read_oob(struct nand_chip *chip, int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct hinfc_host *host = nand_get_controller_data(chip);

 nand_read_oob_op(chip, page, 0, chip->oob_poi, mtd->oobsize);

 if (host->irq_status & HINFC504_INTS_UE) {
  host->irq_status = 0;
  return -EBADMSG;
 }

 host->irq_status = 0;
 return 0;
}
