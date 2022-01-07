
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgbe_prv_data {TYPE_1__* netdev; } ;
struct TYPE_2__ {unsigned int mtu; } ;


 unsigned int ETH_FCS_LEN ;
 unsigned int ETH_HLEN ;
 unsigned int VLAN_HLEN ;

__attribute__((used)) static inline unsigned int xgbe_get_max_frame(struct xgbe_prv_data *pdata)
{
 return pdata->netdev->mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;
}
