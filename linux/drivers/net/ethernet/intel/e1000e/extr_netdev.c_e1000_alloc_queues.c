
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct e1000_ring {int dummy; } ;
struct e1000_adapter {TYPE_1__* tx_ring; TYPE_1__* rx_ring; int rx_ring_count; int tx_ring_count; } ;
struct TYPE_2__ {struct e1000_adapter* adapter; int count; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int e_err (char*) ;
 int kfree (TYPE_1__*) ;
 void* kzalloc (int,int ) ;

__attribute__((used)) static int e1000_alloc_queues(struct e1000_adapter *adapter)
{
 int size = sizeof(struct e1000_ring);

 adapter->tx_ring = kzalloc(size, GFP_KERNEL);
 if (!adapter->tx_ring)
  goto err;
 adapter->tx_ring->count = adapter->tx_ring_count;
 adapter->tx_ring->adapter = adapter;

 adapter->rx_ring = kzalloc(size, GFP_KERNEL);
 if (!adapter->rx_ring)
  goto err;
 adapter->rx_ring->count = adapter->rx_ring_count;
 adapter->rx_ring->adapter = adapter;

 return 0;
err:
 e_err("Unable to allocate memory for queues\n");
 kfree(adapter->rx_ring);
 kfree(adapter->tx_ring);
 return -ENOMEM;
}
