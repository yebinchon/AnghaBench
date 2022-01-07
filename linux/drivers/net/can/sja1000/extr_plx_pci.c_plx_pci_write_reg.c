
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sja1000_priv {scalar_t__ reg_base; } ;


 int iowrite8 (int ,scalar_t__) ;

__attribute__((used)) static void plx_pci_write_reg(const struct sja1000_priv *priv, int port, u8 val)
{
 iowrite8(val, priv->reg_base + port);
}
