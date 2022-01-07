
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nand_chip {int dummy; } ;
struct mtk_nfc {int buffer; } ;
struct mtd_info {int dummy; } ;


 int mtk_nfc_format_subpage (struct mtd_info*,int ,int ,int const*) ;
 int mtk_nfc_write_page (struct mtd_info*,struct nand_chip*,int ,int,int) ;
 struct mtk_nfc* nand_get_controller_data (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int mtk_nfc_write_subpage_hwecc(struct nand_chip *chip, u32 offset,
           u32 data_len, const u8 *buf,
           int oob_on, int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct mtk_nfc *nfc = nand_get_controller_data(chip);
 int ret;

 ret = mtk_nfc_format_subpage(mtd, offset, data_len, buf);
 if (ret < 0)
  return ret;


 return mtk_nfc_write_page(mtd, chip, nfc->buffer, page, 1);
}
