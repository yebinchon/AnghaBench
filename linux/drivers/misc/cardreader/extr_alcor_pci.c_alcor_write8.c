
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct alcor_pci_priv {scalar_t__ iobase; } ;


 int writeb (int ,scalar_t__) ;

void alcor_write8(struct alcor_pci_priv *priv, u8 val, unsigned int addr)
{
 writeb(val, priv->iobase + addr);
}
