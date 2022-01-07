
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct nand_chip {int dummy; } ;


 int mpc5121_nfc_buf_copy (int ,int *,int,int) ;
 int nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static void mpc5121_nfc_write_buf(struct nand_chip *chip, const u_char *buf,
      int len)
{
 mpc5121_nfc_buf_copy(nand_to_mtd(chip), (u_char *)buf, len, 1);
}
