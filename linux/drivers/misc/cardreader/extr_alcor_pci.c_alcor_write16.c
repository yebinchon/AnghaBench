
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct alcor_pci_priv {scalar_t__ iobase; } ;


 int writew (int ,scalar_t__) ;

void alcor_write16(struct alcor_pci_priv *priv, u16 val, unsigned int addr)
{
 writew(val, priv->iobase + addr);
}
