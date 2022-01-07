
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mdio_if_info {int (* mdio_read ) (int ,int ,int,int ) ;int prtad; int dev; } ;


 int MDIO_MMD_DTEXS ;
 int MDIO_MMD_PCS ;
 int MDIO_MMD_PHYXS ;
 int MDIO_MMD_PMAPMD ;
 int MDIO_STAT1 ;
 int MDIO_STAT1_FAULT ;
 int MDIO_STAT1_LSTATUS ;
 int MDIO_STAT2 ;
 int MDIO_STAT2_RXFAULT ;
 int stub1 (int ,int ,int,int ) ;
 int stub2 (int ,int ,int,int ) ;
 int stub3 (int ,int ,int,int ) ;
 int stub4 (int ,int ,int,int ) ;

int mdio45_links_ok(const struct mdio_if_info *mdio, u32 mmd_mask)
{
 int devad, reg;

 if (!mmd_mask) {

  reg = mdio->mdio_read(mdio->dev, mdio->prtad,
          MDIO_MMD_PHYXS, MDIO_STAT2);
  return reg >= 0 && !(reg & MDIO_STAT2_RXFAULT);
 }

 for (devad = 0; mmd_mask; devad++) {
  if (mmd_mask & (1 << devad)) {
   mmd_mask &= ~(1 << devad);


   mdio->mdio_read(mdio->dev, mdio->prtad,
     devad, MDIO_STAT1);
   if (devad == MDIO_MMD_PMAPMD || devad == MDIO_MMD_PCS ||
       devad == MDIO_MMD_PHYXS || devad == MDIO_MMD_DTEXS)
    mdio->mdio_read(mdio->dev, mdio->prtad,
      devad, MDIO_STAT2);


   reg = mdio->mdio_read(mdio->dev, mdio->prtad,
           devad, MDIO_STAT1);
   if (reg < 0 ||
       (reg & (MDIO_STAT1_FAULT | MDIO_STAT1_LSTATUS)) !=
       MDIO_STAT1_LSTATUS)
    return 0;
  }
 }

 return 1;
}
