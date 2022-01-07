
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct atl1c_adapter {int napi; int flags; struct net_device* netdev; } ;


 int __AT_DOWN ;
 int atl1c_check_link_status (struct atl1c_adapter*) ;
 int atl1c_clean_rx_ring (struct atl1c_adapter*) ;
 int atl1c_configure (struct atl1c_adapter*) ;
 int atl1c_irq_enable (struct atl1c_adapter*) ;
 int atl1c_request_irq (struct atl1c_adapter*) ;
 int clear_bit (int ,int *) ;
 int napi_enable (int *) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int atl1c_up(struct atl1c_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 int err;

 netif_carrier_off(netdev);

 err = atl1c_configure(adapter);
 if (unlikely(err))
  goto err_up;

 err = atl1c_request_irq(adapter);
 if (unlikely(err))
  goto err_up;

 atl1c_check_link_status(adapter);
 clear_bit(__AT_DOWN, &adapter->flags);
 napi_enable(&adapter->napi);
 atl1c_irq_enable(adapter);
 netif_start_queue(netdev);
 return err;

err_up:
 atl1c_clean_rx_ring(adapter);
 return err;
}
