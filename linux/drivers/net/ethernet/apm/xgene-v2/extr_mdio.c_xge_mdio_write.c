
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct xge_pdata {int dummy; } ;
struct mii_bus {int dev; struct xge_pdata* priv; } ;


 int ETIMEDOUT ;
 int MII_MGMT_ADDRESS ;
 int MII_MGMT_BUSY ;
 int MII_MGMT_CONTROL ;
 int MII_MGMT_INDICATORS ;
 int PHY_ADDR ;
 int REG_ADDR ;
 int SET_REG_BITS (int*,int ,int) ;
 int dev_err (int *,char*) ;
 int usleep_range (int,int) ;
 int xge_rd_csr (struct xge_pdata*,int ) ;
 int xge_wr_csr (struct xge_pdata*,int ,int) ;

__attribute__((used)) static int xge_mdio_write(struct mii_bus *bus, int phy_id, int reg, u16 data)
{
 struct xge_pdata *pdata = bus->priv;
 u32 done, val = 0;
 u8 wait = 10;

 SET_REG_BITS(&val, PHY_ADDR, phy_id);
 SET_REG_BITS(&val, REG_ADDR, reg);
 xge_wr_csr(pdata, MII_MGMT_ADDRESS, val);

 xge_wr_csr(pdata, MII_MGMT_CONTROL, data);
 do {
  usleep_range(5, 10);
  done = xge_rd_csr(pdata, MII_MGMT_INDICATORS);
 } while ((done & MII_MGMT_BUSY) && wait--);

 if (done & MII_MGMT_BUSY) {
  dev_err(&bus->dev, "MII_MGMT write failed\n");
  return -ETIMEDOUT;
 }

 return 0;
}
