
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int MAC_PFR ;
 int VTFE ;
 int XGMAC_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int ) ;

__attribute__((used)) static int xgbe_disable_rx_vlan_filtering(struct xgbe_prv_data *pdata)
{

 XGMAC_IOWRITE_BITS(pdata, MAC_PFR, VTFE, 0);

 return 0;
}
