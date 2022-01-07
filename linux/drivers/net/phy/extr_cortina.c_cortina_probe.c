
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct phy_device {TYPE_1__* drv; } ;
struct TYPE_2__ {int phy_id; int name; } ;


 int ENODEV ;
 int ENXIO ;
 int VILLA_GLOBAL_CHIP_ID_LSB ;
 int VILLA_GLOBAL_CHIP_ID_MSB ;
 int cortina_read_reg (struct phy_device*,int ) ;
 int phydev_err (struct phy_device*,char*,int ) ;

__attribute__((used)) static int cortina_probe(struct phy_device *phydev)
{
 u32 phy_id = 0;
 int id_lsb = 0, id_msb = 0;


 id_lsb = cortina_read_reg(phydev, VILLA_GLOBAL_CHIP_ID_LSB);
 if (id_lsb < 0)
  return -ENXIO;

 phy_id = id_lsb << 16;

 id_msb = cortina_read_reg(phydev, VILLA_GLOBAL_CHIP_ID_MSB);
 if (id_msb < 0)
  return -ENXIO;

 phy_id |= id_msb;




 if (phy_id != phydev->drv->phy_id) {
  phydev_err(phydev, "Error matching phy with %s driver\n",
      phydev->drv->name);
  return -ENODEV;
 }

 return 0;
}
