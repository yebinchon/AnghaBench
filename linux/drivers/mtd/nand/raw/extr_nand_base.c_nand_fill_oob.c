
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nand_chip {scalar_t__ oob_poi; } ;
struct mtd_oob_ops {int mode; scalar_t__ ooboffs; } ;
struct mtd_info {int oobsize; } ;


 int BUG () ;
 int BUG_ON (int) ;



 int memcpy (scalar_t__,int *,size_t) ;
 int memset (scalar_t__,int,int ) ;
 int mtd_ooblayout_set_databytes (struct mtd_info*,int *,scalar_t__,scalar_t__,size_t) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static uint8_t *nand_fill_oob(struct nand_chip *chip, uint8_t *oob, size_t len,
         struct mtd_oob_ops *ops)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 int ret;





 memset(chip->oob_poi, 0xff, mtd->oobsize);

 switch (ops->mode) {

 case 129:
 case 128:
  memcpy(chip->oob_poi + ops->ooboffs, oob, len);
  return oob + len;

 case 130:
  ret = mtd_ooblayout_set_databytes(mtd, oob, chip->oob_poi,
        ops->ooboffs, len);
  BUG_ON(ret);
  return oob + len;

 default:
  BUG();
 }
 return ((void*)0);
}
