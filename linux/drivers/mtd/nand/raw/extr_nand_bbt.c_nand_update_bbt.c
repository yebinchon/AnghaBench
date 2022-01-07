
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nand_chip {int bbt_erase_shift; int page_shift; int chip_shift; int bbt; struct nand_bbt_descr* bbt_md; struct nand_bbt_descr* bbt_td; } ;
struct nand_bbt_descr {int options; int * version; } ;
struct mtd_info {int oobsize; } ;
typedef int loff_t ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NAND_BBT_PERCHIP ;
 int NAND_BBT_WRITE ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int write_bbt (struct nand_chip*,int *,struct nand_bbt_descr*,struct nand_bbt_descr*,int) ;

__attribute__((used)) static int nand_update_bbt(struct nand_chip *this, loff_t offs)
{
 struct mtd_info *mtd = nand_to_mtd(this);
 int len, res = 0;
 int chip, chipsel;
 uint8_t *buf;
 struct nand_bbt_descr *td = this->bbt_td;
 struct nand_bbt_descr *md = this->bbt_md;

 if (!this->bbt || !td)
  return -EINVAL;


 len = (1 << this->bbt_erase_shift);
 len += (len >> this->page_shift) * mtd->oobsize;
 buf = kmalloc(len, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;


 if (td->options & NAND_BBT_PERCHIP) {
  chip = (int)(offs >> this->chip_shift);
  chipsel = chip;
 } else {
  chip = 0;
  chipsel = -1;
 }

 td->version[chip]++;
 if (md)
  md->version[chip]++;


 if (td->options & NAND_BBT_WRITE) {
  res = write_bbt(this, buf, td, md, chipsel);
  if (res < 0)
   goto out;
 }

 if (md && (md->options & NAND_BBT_WRITE)) {
  res = write_bbt(this, buf, md, td, chipsel);
 }

 out:
 kfree(buf);
 return res;
}
