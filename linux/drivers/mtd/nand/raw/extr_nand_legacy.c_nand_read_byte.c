
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int IO_ADDR_R; } ;
struct nand_chip {TYPE_1__ legacy; } ;


 int readb (int ) ;

__attribute__((used)) static uint8_t nand_read_byte(struct nand_chip *chip)
{
 return readb(chip->legacy.IO_ADDR_R);
}
