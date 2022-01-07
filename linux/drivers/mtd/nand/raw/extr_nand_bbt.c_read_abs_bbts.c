
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
struct nand_chip {int page_shift; } ;
struct nand_bbt_descr {int options; void** version; scalar_t__* pages; } ;
struct mtd_info {int writesize; } ;
typedef int loff_t ;


 int NAND_BBT_VERSION ;
 size_t bbt_get_ver_offs (struct nand_chip*,struct nand_bbt_descr*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int pr_info (char*,scalar_t__,void*) ;
 int scan_read (struct nand_chip*,void**,int,int ,struct nand_bbt_descr*) ;

__attribute__((used)) static void read_abs_bbts(struct nand_chip *this, uint8_t *buf,
     struct nand_bbt_descr *td, struct nand_bbt_descr *md)
{
 struct mtd_info *mtd = nand_to_mtd(this);


 if (td->options & NAND_BBT_VERSION) {
  scan_read(this, buf, (loff_t)td->pages[0] << this->page_shift,
     mtd->writesize, td);
  td->version[0] = buf[bbt_get_ver_offs(this, td)];
  pr_info("Bad block table at page %d, version 0x%02X\n",
    td->pages[0], td->version[0]);
 }


 if (md && (md->options & NAND_BBT_VERSION)) {
  scan_read(this, buf, (loff_t)md->pages[0] << this->page_shift,
     mtd->writesize, md);
  md->version[0] = buf[bbt_get_ver_offs(this, md)];
  pr_info("Bad block table at page %d, version 0x%02X\n",
    md->pages[0], md->version[0]);
 }
}
