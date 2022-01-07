
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int netdev_features_t ;


 int MAC_CTRL_DBG ;
 int NETIF_F_RXALL ;

__attribute__((used)) static void __atl1e_rx_mode(netdev_features_t features, u32 *mac_ctrl_data)
{

 if (features & NETIF_F_RXALL) {

  *mac_ctrl_data |= MAC_CTRL_DBG;
 } else {

  *mac_ctrl_data &= ~MAC_CTRL_DBG;
 }
}
