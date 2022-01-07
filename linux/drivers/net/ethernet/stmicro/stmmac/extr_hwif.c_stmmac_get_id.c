
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stmmac_priv {int ioaddr; int device; } ;


 int GENMASK (int,int) ;
 int dev_info (int ,char*,...) ;
 int readl (int) ;

__attribute__((used)) static u32 stmmac_get_id(struct stmmac_priv *priv, u32 id_reg)
{
 u32 reg = readl(priv->ioaddr + id_reg);

 if (!reg) {
  dev_info(priv->device, "Version ID not available\n");
  return 0x0;
 }

 dev_info(priv->device, "User ID: 0x%x, Synopsys ID: 0x%x\n",
   (unsigned int)(reg & GENMASK(15, 8)) >> 8,
   (unsigned int)(reg & GENMASK(7, 0)));
 return reg & GENMASK(7, 0);
}
