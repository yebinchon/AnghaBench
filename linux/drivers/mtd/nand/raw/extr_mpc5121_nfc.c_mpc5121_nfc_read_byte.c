
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int tmp ;
struct nand_chip {int dummy; } ;


 int mpc5121_nfc_read_buf (struct nand_chip*,int *,int) ;

__attribute__((used)) static u8 mpc5121_nfc_read_byte(struct nand_chip *chip)
{
 u8 tmp;

 mpc5121_nfc_read_buf(chip, &tmp, sizeof(tmp));

 return tmp;
}
