
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nand_chip {int dummy; } ;


 int mtk_nfc_read_byte (struct nand_chip*) ;

__attribute__((used)) static void mtk_nfc_read_buf(struct nand_chip *chip, u8 *buf, int len)
{
 int i;

 for (i = 0; i < len; i++)
  buf[i] = mtk_nfc_read_byte(chip);
}
