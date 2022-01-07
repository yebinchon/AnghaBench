
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct igbvf_adapter {TYPE_1__* msix_entries; struct net_device* netdev; } ;
struct TYPE_2__ {int vector; } ;


 int free_irq (int ,struct net_device*) ;

__attribute__((used)) static void igbvf_free_irq(struct igbvf_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 int vector;

 if (adapter->msix_entries) {
  for (vector = 0; vector < 3; vector++)
   free_irq(adapter->msix_entries[vector].vector, netdev);
 }
}
