
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mii_bus {int dev; int id; scalar_t__ priv; } ;
struct hns_mdio_device {int vbase; } ;


 int MDIO_ADDR_DATA_M ;
 int MDIO_ADDR_DATA_S ;
 int MDIO_ADDR_REG ;
 int MDIO_C22_WRITE ;
 int MDIO_C45_WRITE_ADDR ;
 int MDIO_C45_WRITE_DATA ;
 int MDIO_SET_REG_FIELD (struct hns_mdio_device*,int ,int ,int ,int) ;
 int MDIO_WDATA_DATA_M ;
 int MDIO_WDATA_DATA_S ;
 int MDIO_WDATA_REG ;
 int MII_ADDR_C45 ;
 int dev_dbg (int *,char*,int,int,...) ;
 int dev_err (int *,char*) ;
 int hns_mdio_cmd_write (struct hns_mdio_device*,int,int,int,int) ;
 int hns_mdio_wait_ready (struct mii_bus*) ;

__attribute__((used)) static int hns_mdio_write(struct mii_bus *bus,
     int phy_id, int regnum, u16 data)
{
 int ret;
 struct hns_mdio_device *mdio_dev = (struct hns_mdio_device *)bus->priv;
 u8 devad = ((regnum >> 16) & 0x1f);
 u8 is_c45 = !!(regnum & MII_ADDR_C45);
 u16 reg = (u16)(regnum & 0xffff);
 u8 op;
 u16 cmd_reg_cfg;

 dev_dbg(&bus->dev, "mdio write %s,base is %p\n",
  bus->id, mdio_dev->vbase);
 dev_dbg(&bus->dev, "phy id=%d, is_c45=%d, devad=%d, reg=%#x, write data=%d\n",
  phy_id, is_c45, devad, reg, data);


 ret = hns_mdio_wait_ready(bus);
 if (ret) {
  dev_err(&bus->dev, "MDIO bus is busy\n");
  return ret;
 }

 if (!is_c45) {
  cmd_reg_cfg = reg;
  op = MDIO_C22_WRITE;
 } else {

  MDIO_SET_REG_FIELD(mdio_dev, MDIO_ADDR_REG, MDIO_ADDR_DATA_M,
       MDIO_ADDR_DATA_S, reg);

  hns_mdio_cmd_write(mdio_dev, is_c45,
       MDIO_C45_WRITE_ADDR, phy_id, devad);


  ret = hns_mdio_wait_ready(bus);
  if (ret) {
   dev_err(&bus->dev, "MDIO bus is busy\n");
   return ret;
  }


  cmd_reg_cfg = devad;
  op = MDIO_C45_WRITE_DATA;
 }

 MDIO_SET_REG_FIELD(mdio_dev, MDIO_WDATA_REG, MDIO_WDATA_DATA_M,
      MDIO_WDATA_DATA_S, data);

 hns_mdio_cmd_write(mdio_dev, is_c45, op, phy_id, cmd_reg_cfg);

 return 0;
}
