
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int ;
struct net_device {int base_addr; int name; } ;
struct TYPE_6__ {int* pdl; TYPE_2__* skb; } ;
typedef TYPE_1__ hp100_ring_t ;
struct TYPE_7__ {scalar_t__ data; } ;


 int MAX_ETHER_SIZE ;
 int TRACE ;
 int hp100_outw (int,int ) ;
 TYPE_2__* netdev_alloc_skb (struct net_device*,int ) ;
 int netdev_priv (struct net_device*) ;
 int pdl_map_data (int ,scalar_t__) ;
 int printk (char*,int ,...) ;
 int roundup (int,int) ;
 scalar_t__ skb_put (TYPE_2__*,int) ;
 int skb_reserve (TYPE_2__*,int) ;

__attribute__((used)) static int hp100_build_rx_pdl(hp100_ring_t * ringptr,
         struct net_device *dev)
{
 ringptr->skb = netdev_alloc_skb(dev, roundup(MAX_ETHER_SIZE + 2, 4));

 if (((void*)0) != ringptr->skb) {





  skb_reserve(ringptr->skb, 2);

  ringptr->skb->data = skb_put(ringptr->skb, MAX_ETHER_SIZE);
  ringptr->pdl[0] = 0x00020000;
  ringptr->pdl[3] = pdl_map_data(netdev_priv(dev),
            ringptr->skb->data);
  ringptr->pdl[4] = MAX_ETHER_SIZE;





  return 1;
 }
 ringptr->pdl[0] = 0x00010000;

 return 0;
}
