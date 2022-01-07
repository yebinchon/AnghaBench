
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mdio_if_info {int (* mdio_read ) (int ,int ,int ,int ) ;int prtad; int dev; } ;


 int ADVERTISED_100baseT_Full ;
 int ADVERTISED_100baseT_Half ;
 int ADVERTISED_10baseT_Full ;
 int ADVERTISED_10baseT_Half ;
 int ADVERTISED_Asym_Pause ;
 int ADVERTISED_Pause ;
 int ADVERTISE_100FULL ;
 int ADVERTISE_100HALF ;
 int ADVERTISE_10FULL ;
 int ADVERTISE_10HALF ;
 int ADVERTISE_PAUSE_ASYM ;
 int ADVERTISE_PAUSE_CAP ;
 int MDIO_MMD_AN ;
 int stub1 (int ,int ,int ,int ) ;

__attribute__((used)) static u32 mdio45_get_an(const struct mdio_if_info *mdio, u16 addr)
{
 u32 result = 0;
 int reg;

 reg = mdio->mdio_read(mdio->dev, mdio->prtad, MDIO_MMD_AN, addr);
 if (reg & ADVERTISE_10HALF)
  result |= ADVERTISED_10baseT_Half;
 if (reg & ADVERTISE_10FULL)
  result |= ADVERTISED_10baseT_Full;
 if (reg & ADVERTISE_100HALF)
  result |= ADVERTISED_100baseT_Half;
 if (reg & ADVERTISE_100FULL)
  result |= ADVERTISED_100baseT_Full;
 if (reg & ADVERTISE_PAUSE_CAP)
  result |= ADVERTISED_Pause;
 if (reg & ADVERTISE_PAUSE_ASYM)
  result |= ADVERTISED_Asym_Pause;
 return result;
}
