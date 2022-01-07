
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pcan_pccard {scalar_t__ ioport_addr; } ;


 scalar_t__ PCC_COMN_OFF ;
 int ioread8 (scalar_t__) ;

__attribute__((used)) static u8 pcan_read_reg(struct pcan_pccard *card, int port)
{
 return ioread8(card->ioport_addr + PCC_COMN_OFF + port);
}
