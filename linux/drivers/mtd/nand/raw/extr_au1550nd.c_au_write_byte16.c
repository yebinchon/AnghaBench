
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_char ;
typedef int u16 ;
struct TYPE_2__ {int IO_ADDR_W; } ;
struct nand_chip {TYPE_1__ legacy; } ;


 int le16_to_cpu (int ) ;
 int wmb () ;
 int writew (int ,int ) ;

__attribute__((used)) static void au_write_byte16(struct nand_chip *this, u_char byte)
{
 writew(le16_to_cpu((u16) byte), this->legacy.IO_ADDR_W);
 wmb();
}
