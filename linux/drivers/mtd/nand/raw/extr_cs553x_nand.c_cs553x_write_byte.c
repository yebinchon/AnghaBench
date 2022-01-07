
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {scalar_t__ IO_ADDR_W; scalar_t__ IO_ADDR_R; } ;
struct nand_chip {TYPE_1__ legacy; } ;


 int CS_NAND_CTLR_BUSY ;
 scalar_t__ MM_NAND_STS ;
 int readb (scalar_t__) ;
 int udelay (int) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void cs553x_write_byte(struct nand_chip *this, u_char byte)
{
 int i = 100000;

 while (i && readb(this->legacy.IO_ADDR_R + MM_NAND_STS) & CS_NAND_CTLR_BUSY) {
  udelay(1);
  i--;
 }
 writeb(byte, this->legacy.IO_ADDR_W + 0x801);
}
