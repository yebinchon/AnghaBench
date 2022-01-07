
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nand_chip {int dummy; } ;


 int sunxi_nfc_randomizer_config (struct nand_chip*,int,int) ;
 int sunxi_nfc_randomizer_disable (struct nand_chip*) ;
 int sunxi_nfc_randomizer_enable (struct nand_chip*) ;
 int sunxi_nfc_read_buf (struct nand_chip*,int *,int) ;

__attribute__((used)) static void sunxi_nfc_randomizer_read_buf(struct nand_chip *nand, uint8_t *buf,
       int len, bool ecc, int page)
{
 sunxi_nfc_randomizer_config(nand, page, ecc);
 sunxi_nfc_randomizer_enable(nand);
 sunxi_nfc_read_buf(nand, buf, len);
 sunxi_nfc_randomizer_disable(nand);
}
