
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct xgene_enet_pdata {int ndev; } ;


 int BUSY_MASK ;
 int MII_MGMT_ADDRESS_ADDR ;
 int MII_MGMT_CONTROL_ADDR ;
 int MII_MGMT_INDICATORS_ADDR ;
 int PHY_ADDR (int ) ;
 int PHY_CONTROL (int ) ;
 int REG_ADDR (int) ;
 int netdev_err (int ,char*) ;
 int usleep_range (int,int) ;
 int xgene_enet_rd_mac (struct xgene_enet_pdata*,int ) ;
 int xgene_enet_wr_mac (struct xgene_enet_pdata*,int ,int) ;

__attribute__((used)) static void xgene_mii_phy_write(struct xgene_enet_pdata *p, u8 phy_id,
    u32 reg, u16 data)
{
 u32 addr, wr_data, done;
 int i;

 addr = PHY_ADDR(phy_id) | REG_ADDR(reg);
 xgene_enet_wr_mac(p, MII_MGMT_ADDRESS_ADDR, addr);

 wr_data = PHY_CONTROL(data);
 xgene_enet_wr_mac(p, MII_MGMT_CONTROL_ADDR, wr_data);

 for (i = 0; i < 10; i++) {
  done = xgene_enet_rd_mac(p, MII_MGMT_INDICATORS_ADDR);
  if (!(done & BUSY_MASK))
   return;
  usleep_range(10, 20);
 }

 netdev_err(p->ndev, "MII_MGMT write failed\n");
}
