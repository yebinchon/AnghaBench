
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct xgene_enet_pdata {int ndev; } ;


 int BUSY_MASK ;
 int MII_MGMT_ADDRESS_ADDR ;
 int MII_MGMT_COMMAND_ADDR ;
 int MII_MGMT_INDICATORS_ADDR ;
 int MII_MGMT_STATUS_ADDR ;
 int PHY_ADDR (int ) ;
 int READ_CYCLE_MASK ;
 int REG_ADDR (int) ;
 int netdev_err (int ,char*) ;
 int usleep_range (int,int) ;
 int xgene_enet_rd_mac (struct xgene_enet_pdata*,int ) ;
 int xgene_enet_wr_mac (struct xgene_enet_pdata*,int ,int) ;

__attribute__((used)) static u32 xgene_mii_phy_read(struct xgene_enet_pdata *p, u8 phy_id, u32 reg)
{
 u32 addr, data, done;
 int i;

 addr = PHY_ADDR(phy_id) | REG_ADDR(reg);
 xgene_enet_wr_mac(p, MII_MGMT_ADDRESS_ADDR, addr);
 xgene_enet_wr_mac(p, MII_MGMT_COMMAND_ADDR, READ_CYCLE_MASK);

 for (i = 0; i < 10; i++) {
  done = xgene_enet_rd_mac(p, MII_MGMT_INDICATORS_ADDR);
  if (!(done & BUSY_MASK)) {
   data = xgene_enet_rd_mac(p, MII_MGMT_STATUS_ADDR);
   xgene_enet_wr_mac(p, MII_MGMT_COMMAND_ADDR, 0);

   return data;
  }
  usleep_range(10, 20);
 }

 netdev_err(p->ndev, "MII_MGMT read failed\n");

 return 0;
}
