
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct oxnas_nand_ctrl {int io_base; } ;
struct nand_chip {int dummy; } ;


 int iowrite8_rep (int ,int const*,int) ;
 struct oxnas_nand_ctrl* nand_get_controller_data (struct nand_chip*) ;

__attribute__((used)) static void oxnas_nand_write_buf(struct nand_chip *chip, const u8 *buf,
     int len)
{
 struct oxnas_nand_ctrl *oxnas = nand_get_controller_data(chip);

 iowrite8_rep(oxnas->io_base, buf, len);
}
