
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgbe_prv_data {TYPE_1__* netdev; } ;
struct TYPE_2__ {scalar_t__ mtu; } ;


 int JE ;
 int MAC_RCR ;
 int XGMAC_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,unsigned int) ;
 scalar_t__ XGMAC_STD_PACKET_MTU ;

__attribute__((used)) static void xgbe_config_jumbo_enable(struct xgbe_prv_data *pdata)
{
 unsigned int val;

 val = (pdata->netdev->mtu > XGMAC_STD_PACKET_MTU) ? 1 : 0;

 XGMAC_IOWRITE_BITS(pdata, MAC_RCR, JE, val);
}
