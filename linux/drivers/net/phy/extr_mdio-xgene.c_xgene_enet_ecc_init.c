
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct xgene_mdio_pdata {int dev; } ;


 int ENODEV ;
 int MENET_BLOCK_MEM_RDY_ADDR ;
 int MENET_CFG_MEM_RAM_SHUTDOWN_ADDR ;
 int dev_err (int ,char*) ;
 int usleep_range (int,int) ;
 int xgene_menet_rd_diag_csr (struct xgene_mdio_pdata*,int ) ;
 int xgene_menet_wr_diag_csr (struct xgene_mdio_pdata*,int ,int) ;

__attribute__((used)) static int xgene_enet_ecc_init(struct xgene_mdio_pdata *pdata)
{
 u32 data;
 u8 wait = 10;

 xgene_menet_wr_diag_csr(pdata, MENET_CFG_MEM_RAM_SHUTDOWN_ADDR, 0x0);
 do {
  usleep_range(100, 110);
  data = xgene_menet_rd_diag_csr(pdata, MENET_BLOCK_MEM_RDY_ADDR);
 } while ((data != 0xffffffff) && wait--);

 if (data != 0xffffffff) {
  dev_err(pdata->dev, "Failed to release memory from shutdown\n");
  return -ENODEV;
 }

 return 0;
}
