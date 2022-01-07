
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct alcor_pci_priv {scalar_t__ iobase; } ;


 int ioread32be (scalar_t__) ;

u32 alcor_read32be(struct alcor_pci_priv *priv, unsigned int addr)
{
 return ioread32be(priv->iobase + addr);
}
