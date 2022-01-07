
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct alcor_pci_priv {scalar_t__ iobase; } ;


 int iowrite32be (int ,scalar_t__) ;

void alcor_write32be(struct alcor_pci_priv *priv, u32 val, unsigned int addr)
{
 iowrite32be(val, priv->iobase + addr);
}
