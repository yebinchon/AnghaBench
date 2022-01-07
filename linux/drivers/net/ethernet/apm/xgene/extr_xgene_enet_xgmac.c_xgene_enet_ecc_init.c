
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct xgene_enet_pdata {struct net_device* ndev; } ;
struct net_device {int dummy; } ;


 int ENET_BLOCK_MEM_RDY_ADDR ;
 int ENET_CFG_MEM_RAM_SHUTDOWN_ADDR ;
 int ENODEV ;
 int netdev_err (struct net_device*,char*) ;
 int usleep_range (int,int) ;
 int xgene_enet_rd_diag_csr (struct xgene_enet_pdata*,int ,int*) ;
 int xgene_enet_wr_diag_csr (struct xgene_enet_pdata*,int ,int) ;

__attribute__((used)) static int xgene_enet_ecc_init(struct xgene_enet_pdata *pdata)
{
 struct net_device *ndev = pdata->ndev;
 u32 data;
 u8 wait = 10;

 xgene_enet_wr_diag_csr(pdata, ENET_CFG_MEM_RAM_SHUTDOWN_ADDR, 0x0);
 do {
  usleep_range(100, 110);
  xgene_enet_rd_diag_csr(pdata, ENET_BLOCK_MEM_RDY_ADDR, &data);
 } while ((data != 0xffffffff) && wait--);

 if (data != 0xffffffff) {
  netdev_err(ndev, "Failed to release memory from shutdown\n");
  return -ENODEV;
 }

 return 0;
}
