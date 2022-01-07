
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int mtu; int dev_addr; } ;
struct et131x_adapter {int registry_jumbo_packet; int addr; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_warn (int *,char*) ;
 int et131x_adapter_memory_alloc (struct et131x_adapter*) ;
 int et131x_adapter_memory_free (struct et131x_adapter*) ;
 int et131x_adapter_setup (struct et131x_adapter*) ;
 int et131x_disable_txrx (struct net_device*) ;
 int et131x_enable_txrx (struct net_device*) ;
 int et131x_hwaddr_init (struct et131x_adapter*) ;
 int et131x_init_send (struct et131x_adapter*) ;
 int et131x_soft_reset (struct et131x_adapter*) ;
 int ether_addr_copy (int ,int ) ;
 struct et131x_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int et131x_change_mtu(struct net_device *netdev, int new_mtu)
{
 int result = 0;
 struct et131x_adapter *adapter = netdev_priv(netdev);

 et131x_disable_txrx(netdev);

 netdev->mtu = new_mtu;

 et131x_adapter_memory_free(adapter);


 adapter->registry_jumbo_packet = new_mtu + 14;
 et131x_soft_reset(adapter);

 result = et131x_adapter_memory_alloc(adapter);
 if (result != 0) {
  dev_warn(&adapter->pdev->dev,
    "Change MTU failed; couldn't re-alloc DMA memory\n");
  return result;
 }

 et131x_init_send(adapter);
 et131x_hwaddr_init(adapter);
 ether_addr_copy(netdev->dev_addr, adapter->addr);


 et131x_adapter_setup(adapter);
 et131x_enable_txrx(netdev);

 return result;
}
