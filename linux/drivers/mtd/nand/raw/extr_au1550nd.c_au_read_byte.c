
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int IO_ADDR_R; } ;
struct nand_chip {TYPE_1__ legacy; } ;


 int readb (int ) ;
 int wmb () ;

__attribute__((used)) static u_char au_read_byte(struct nand_chip *this)
{
 u_char ret = readb(this->legacy.IO_ADDR_R);
 wmb();
 return ret;
}
