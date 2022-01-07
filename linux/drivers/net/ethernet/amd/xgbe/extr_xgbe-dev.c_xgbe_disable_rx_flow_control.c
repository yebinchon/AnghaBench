
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int MAC_RFCR ;
 int RFE ;
 int XGMAC_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int ) ;

__attribute__((used)) static int xgbe_disable_rx_flow_control(struct xgbe_prv_data *pdata)
{
 XGMAC_IOWRITE_BITS(pdata, MAC_RFCR, RFE, 0);

 return 0;
}
