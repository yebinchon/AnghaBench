
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct xgene_enet_pdata {TYPE_1__* ndev; } ;
struct TYPE_2__ {int* dev_addr; } ;


 int STATION_ADDR0_ADDR ;
 int STATION_ADDR1_ADDR ;
 int xgene_enet_rd_mac (struct xgene_enet_pdata*,int ) ;
 int xgene_enet_wr_mac (struct xgene_enet_pdata*,int ,int) ;

__attribute__((used)) static void xgene_sgmac_set_mac_addr(struct xgene_enet_pdata *p)
{
 u32 addr0, addr1;
 u8 *dev_addr = p->ndev->dev_addr;

 addr0 = (dev_addr[3] << 24) | (dev_addr[2] << 16) |
  (dev_addr[1] << 8) | dev_addr[0];
 xgene_enet_wr_mac(p, STATION_ADDR0_ADDR, addr0);

 addr1 = xgene_enet_rd_mac(p, STATION_ADDR1_ADDR);
 addr1 |= (dev_addr[5] << 24) | (dev_addr[4] << 16);
 xgene_enet_wr_mac(p, STATION_ADDR1_ADDR, addr1);
}
