
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pch_gbe_adapter {void* rx_ring; TYPE_1__* pdev; void* tx_ring; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* devm_kzalloc (int *,int,int ) ;

__attribute__((used)) static int pch_gbe_alloc_queues(struct pch_gbe_adapter *adapter)
{
 adapter->tx_ring = devm_kzalloc(&adapter->pdev->dev,
     sizeof(*adapter->tx_ring), GFP_KERNEL);
 if (!adapter->tx_ring)
  return -ENOMEM;

 adapter->rx_ring = devm_kzalloc(&adapter->pdev->dev,
     sizeof(*adapter->rx_ring), GFP_KERNEL);
 if (!adapter->rx_ring)
  return -ENOMEM;
 return 0;
}
