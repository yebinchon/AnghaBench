
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct et131x_adapter {int registry_jumbo_packet; int addr; int rcv_lock; int tcb_ready_qlock; int tcb_send_qlock; struct net_device* netdev; int pdev; } ;


 int ether_addr_copy (int ,int const*) ;
 struct et131x_adapter* netdev_priv (struct net_device*) ;
 int pci_dev_get (struct pci_dev*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct et131x_adapter *et131x_adapter_init(struct net_device *netdev,
        struct pci_dev *pdev)
{
 static const u8 default_mac[] = { 0x00, 0x05, 0x3d, 0x00, 0x02, 0x00 };

 struct et131x_adapter *adapter;

 adapter = netdev_priv(netdev);
 adapter->pdev = pci_dev_get(pdev);
 adapter->netdev = netdev;

 spin_lock_init(&adapter->tcb_send_qlock);
 spin_lock_init(&adapter->tcb_ready_qlock);
 spin_lock_init(&adapter->rcv_lock);

 adapter->registry_jumbo_packet = 1514;

 ether_addr_copy(adapter->addr, default_mac);

 return adapter;
}
