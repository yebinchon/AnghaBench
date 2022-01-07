
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ems_pci_card {scalar_t__ base_addr; } ;


 int readb (scalar_t__) ;

__attribute__((used)) static u8 ems_pci_v1_readb(struct ems_pci_card *card, unsigned int port)
{
 return readb(card->base_addr + (port * 4));
}
