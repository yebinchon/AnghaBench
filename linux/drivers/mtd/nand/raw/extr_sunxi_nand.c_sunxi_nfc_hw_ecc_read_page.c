
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u8 ;
struct nand_ecc_ctrl {int steps; int size; int bytes; } ;
struct nand_chip {int * oob_poi; int cur_cs; struct nand_ecc_ctrl ecc; } ;
struct mtd_info {scalar_t__ writesize; } ;


 int nand_read_page_op (struct nand_chip*,int,int ,int *,int ) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int sunxi_nfc_hw_ecc_disable (struct nand_chip*) ;
 int sunxi_nfc_hw_ecc_enable (struct nand_chip*) ;
 int sunxi_nfc_hw_ecc_read_chunk (struct nand_chip*,int *,int,int *,scalar_t__,int*,unsigned int*,int,int,int) ;
 int sunxi_nfc_hw_ecc_read_extra_oob (struct nand_chip*,int *,int*,int,int) ;
 int sunxi_nfc_select_chip (struct nand_chip*,int ) ;

__attribute__((used)) static int sunxi_nfc_hw_ecc_read_page(struct nand_chip *nand, uint8_t *buf,
          int oob_required, int page)
{
 struct mtd_info *mtd = nand_to_mtd(nand);
 struct nand_ecc_ctrl *ecc = &nand->ecc;
 unsigned int max_bitflips = 0;
 int ret, i, cur_off = 0;
 bool raw_mode = 0;

 sunxi_nfc_select_chip(nand, nand->cur_cs);

 nand_read_page_op(nand, page, 0, ((void*)0), 0);

 sunxi_nfc_hw_ecc_enable(nand);

 for (i = 0; i < ecc->steps; i++) {
  int data_off = i * ecc->size;
  int oob_off = i * (ecc->bytes + 4);
  u8 *data = buf + data_off;
  u8 *oob = nand->oob_poi + oob_off;

  ret = sunxi_nfc_hw_ecc_read_chunk(nand, data, data_off, oob,
        oob_off + mtd->writesize,
        &cur_off, &max_bitflips,
        !i, oob_required, page);
  if (ret < 0)
   return ret;
  else if (ret)
   raw_mode = 1;
 }

 if (oob_required)
  sunxi_nfc_hw_ecc_read_extra_oob(nand, nand->oob_poi, &cur_off,
      !raw_mode, page);

 sunxi_nfc_hw_ecc_disable(nand);

 return max_bitflips;
}
