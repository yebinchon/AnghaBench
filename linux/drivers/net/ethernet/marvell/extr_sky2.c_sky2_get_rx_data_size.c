
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sky2_port {unsigned int rx_nfrags; TYPE_1__* netdev; } ;
struct rx_ring_info {int frag_addr; } ;
struct TYPE_2__ {scalar_t__ mtu; } ;


 scalar_t__ ARRAY_SIZE (int ) ;
 int BUG_ON (int) ;
 unsigned int ETH_HLEN ;
 unsigned int PAGE_SHIFT ;
 scalar_t__ VLAN_HLEN ;
 unsigned int copybreak ;
 unsigned int roundup (scalar_t__,int) ;

__attribute__((used)) static unsigned sky2_get_rx_data_size(struct sky2_port *sky2)
{
 struct rx_ring_info *re;
 unsigned size;


 size = roundup(sky2->netdev->mtu + ETH_HLEN + VLAN_HLEN, 8);

 sky2->rx_nfrags = size >> PAGE_SHIFT;
 BUG_ON(sky2->rx_nfrags > ARRAY_SIZE(re->frag_addr));


 size -= sky2->rx_nfrags << PAGE_SHIFT;


 if (size < copybreak)
  size = copybreak;
 if (size < ETH_HLEN)
  size = ETH_HLEN;

 return size;
}
