
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct xgene_mdio_pdata {int dummy; } ;
struct mii_bus {int dev; scalar_t__ priv; } ;


 int BUSY_MASK ;
 int EBUSY ;
 int MII_MGMT_ADDRESS_ADDR ;
 int MII_MGMT_CONTROL_ADDR ;
 int MII_MGMT_INDICATORS_ADDR ;
 int PHY_ADDR ;
 int REG_ADDR ;
 int SET_VAL (int ,int) ;
 int dev_err (int *,char*) ;
 int usleep_range (int,int) ;
 int xgene_mdio_rd_mac (struct xgene_mdio_pdata*,int ) ;
 int xgene_mdio_wr_mac (struct xgene_mdio_pdata*,int ,int) ;

int xgene_mdio_rgmii_write(struct mii_bus *bus, int phy_id, int reg, u16 data)
{
 struct xgene_mdio_pdata *pdata = (struct xgene_mdio_pdata *)bus->priv;
 u32 val, done;
 u8 wait = 10;

 val = SET_VAL(PHY_ADDR, phy_id) | SET_VAL(REG_ADDR, reg);
 xgene_mdio_wr_mac(pdata, MII_MGMT_ADDRESS_ADDR, val);

 xgene_mdio_wr_mac(pdata, MII_MGMT_CONTROL_ADDR, data);
 do {
  usleep_range(5, 10);
  done = xgene_mdio_rd_mac(pdata, MII_MGMT_INDICATORS_ADDR);
 } while ((done & BUSY_MASK) && wait--);

 if (done & BUSY_MASK) {
  dev_err(&bus->dev, "MII_MGMT write failed\n");
  return -EBUSY;
 }

 return 0;
}
