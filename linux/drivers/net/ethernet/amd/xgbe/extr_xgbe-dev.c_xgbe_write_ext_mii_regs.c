
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct xgbe_prv_data {int netdev; int mdio_complete; } ;


 int BUSY ;
 int CMD ;
 int DATA ;
 int ETIMEDOUT ;
 int HZ ;
 int MAC_MDIOSCAR ;
 int MAC_MDIOSCCDR ;
 int XGMAC_IOWRITE (struct xgbe_prv_data*,int ,unsigned int) ;
 int XGMAC_SET_BITS (unsigned int,int ,int ,int) ;
 int netdev_err (int ,char*) ;
 int reinit_completion (int *) ;
 int wait_for_completion_timeout (int *,int ) ;
 unsigned int xgbe_create_mdio_sca (int,int) ;

__attribute__((used)) static int xgbe_write_ext_mii_regs(struct xgbe_prv_data *pdata, int addr,
       int reg, u16 val)
{
 unsigned int mdio_sca, mdio_sccd;

 reinit_completion(&pdata->mdio_complete);

 mdio_sca = xgbe_create_mdio_sca(addr, reg);
 XGMAC_IOWRITE(pdata, MAC_MDIOSCAR, mdio_sca);

 mdio_sccd = 0;
 XGMAC_SET_BITS(mdio_sccd, MAC_MDIOSCCDR, DATA, val);
 XGMAC_SET_BITS(mdio_sccd, MAC_MDIOSCCDR, CMD, 1);
 XGMAC_SET_BITS(mdio_sccd, MAC_MDIOSCCDR, BUSY, 1);
 XGMAC_IOWRITE(pdata, MAC_MDIOSCCDR, mdio_sccd);

 if (!wait_for_completion_timeout(&pdata->mdio_complete, HZ)) {
  netdev_err(pdata->netdev, "mdio write operation timed out\n");
  return -ETIMEDOUT;
 }

 return 0;
}
