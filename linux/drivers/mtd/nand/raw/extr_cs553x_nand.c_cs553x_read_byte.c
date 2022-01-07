
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int IO_ADDR_R; } ;
struct nand_chip {TYPE_1__ legacy; } ;


 unsigned char readb (int ) ;

__attribute__((used)) static unsigned char cs553x_read_byte(struct nand_chip *this)
{
 return readb(this->legacy.IO_ADDR_R);
}
