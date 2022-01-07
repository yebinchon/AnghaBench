
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct oxnas_nand_ctrl {int io_base; } ;
struct nand_chip {int dummy; } ;


 struct oxnas_nand_ctrl* nand_get_controller_data (struct nand_chip*) ;
 int readb (int ) ;

__attribute__((used)) static uint8_t oxnas_nand_read_byte(struct nand_chip *chip)
{
 struct oxnas_nand_ctrl *oxnas = nand_get_controller_data(chip);

 return readb(oxnas->io_base);
}
