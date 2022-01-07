
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nand_chip {int dummy; } ;


 int mtk_nfc_write_byte (struct nand_chip*,int const) ;

__attribute__((used)) static void mtk_nfc_write_buf(struct nand_chip *chip, const u8 *buf, int len)
{
 int i;

 for (i = 0; i < len; i++)
  mtk_nfc_write_byte(chip, buf[i]);
}
