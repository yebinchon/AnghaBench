
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nand_chip {int dummy; } ;
struct nand_bbt_descr {size_t len; int options; } ;
struct mtd_info {int dummy; } ;
typedef int loff_t ;


 int NAND_BBT_VERSION ;
 int mtd_read (struct mtd_info*,int ,size_t,size_t*,int *) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int scan_read_data(struct nand_chip *this, uint8_t *buf, loff_t offs,
     struct nand_bbt_descr *td)
{
 struct mtd_info *mtd = nand_to_mtd(this);
 size_t retlen;
 size_t len;

 len = td->len;
 if (td->options & NAND_BBT_VERSION)
  len++;

 return mtd_read(mtd, offs, len, &retlen, buf);
}
