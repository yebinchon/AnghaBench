
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_2__ {int (* write_buf ) (struct nand_chip*,int *,int) ;} ;
struct nand_chip {TYPE_1__ legacy; } ;


 int stub1 (struct nand_chip*,int *,int) ;

__attribute__((used)) static void nand_write_byte16(struct nand_chip *chip, uint8_t byte)
{
 uint16_t word = byte;
 chip->legacy.write_buf(chip, (uint8_t *)&word, 2);
}
