
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
typedef int u16 ;
struct TYPE_2__ {int IO_ADDR_R; } ;
struct nand_chip {TYPE_1__ legacy; } ;


 int readw (int ) ;
 int wmb () ;

__attribute__((used)) static void au_read_buf16(struct nand_chip *this, u_char *buf, int len)
{
 int i;
 u16 *p = (u16 *) buf;
 len >>= 1;

 for (i = 0; i < len; i++) {
  p[i] = readw(this->legacy.IO_ADDR_R);
  wmb();
 }
}
