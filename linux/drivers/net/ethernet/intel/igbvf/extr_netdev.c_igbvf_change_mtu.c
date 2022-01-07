
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int mtu; } ;
struct igbvf_adapter {int max_frame_size; int rx_buffer_len; int state; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int ETH_FCS_LEN ;
 int ETH_FRAME_LEN ;
 int ETH_HLEN ;
 int PAGE_SIZE ;
 int VLAN_HLEN ;
 int __IGBVF_RESETTING ;
 int clear_bit (int ,int *) ;
 int dev_info (int *,char*,int,int) ;
 int igbvf_down (struct igbvf_adapter*) ;
 int igbvf_reset (struct igbvf_adapter*) ;
 int igbvf_up (struct igbvf_adapter*) ;
 struct igbvf_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int igbvf_change_mtu(struct net_device *netdev, int new_mtu)
{
 struct igbvf_adapter *adapter = netdev_priv(netdev);
 int max_frame = new_mtu + ETH_HLEN + ETH_FCS_LEN;

 while (test_and_set_bit(__IGBVF_RESETTING, &adapter->state))
  usleep_range(1000, 2000);

 adapter->max_frame_size = max_frame;
 if (netif_running(netdev))
  igbvf_down(adapter);
 if (max_frame <= 1024)
  adapter->rx_buffer_len = 1024;
 else if (max_frame <= 2048)
  adapter->rx_buffer_len = 2048;
 else



  adapter->rx_buffer_len = PAGE_SIZE / 2;



 if ((max_frame == ETH_FRAME_LEN + ETH_FCS_LEN) ||
     (max_frame == ETH_FRAME_LEN + VLAN_HLEN + ETH_FCS_LEN))
  adapter->rx_buffer_len = ETH_FRAME_LEN + VLAN_HLEN +
      ETH_FCS_LEN;

 dev_info(&adapter->pdev->dev, "changing MTU from %d to %d\n",
   netdev->mtu, new_mtu);
 netdev->mtu = new_mtu;

 if (netif_running(netdev))
  igbvf_up(adapter);
 else
  igbvf_reset(adapter);

 clear_bit(__IGBVF_RESETTING, &adapter->state);

 return 0;
}
