
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct xge_pdata {TYPE_1__* ndev; } ;
struct TYPE_2__ {int* dev_addr; } ;


 int STATION_ADDR0 ;
 int STATION_ADDR1 ;
 int xge_wr_csr (struct xge_pdata*,int ,int) ;

void xge_mac_set_station_addr(struct xge_pdata *pdata)
{
 u8 *dev_addr = pdata->ndev->dev_addr;
 u32 addr0, addr1;

 addr0 = (dev_addr[3] << 24) | (dev_addr[2] << 16) |
  (dev_addr[1] << 8) | dev_addr[0];
 addr1 = (dev_addr[5] << 24) | (dev_addr[4] << 16);

 xge_wr_csr(pdata, STATION_ADDR0, addr0);
 xge_wr_csr(pdata, STATION_ADDR1, addr1);
}
