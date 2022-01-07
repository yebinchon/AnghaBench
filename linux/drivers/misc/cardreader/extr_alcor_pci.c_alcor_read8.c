
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct alcor_pci_priv {scalar_t__ iobase; } ;


 int readb (scalar_t__) ;

u8 alcor_read8(struct alcor_pci_priv *priv, unsigned int addr)
{
 return readb(priv->iobase + addr);
}
