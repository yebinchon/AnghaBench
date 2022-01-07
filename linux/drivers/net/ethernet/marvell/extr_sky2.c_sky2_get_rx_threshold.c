
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sky2_port {TYPE_1__* netdev; } ;
struct TYPE_2__ {scalar_t__ mtu; } ;


 scalar_t__ ETH_HLEN ;
 scalar_t__ VLAN_HLEN ;
 unsigned int roundup (scalar_t__,int) ;

__attribute__((used)) static unsigned sky2_get_rx_threshold(struct sky2_port *sky2)
{
 unsigned size;


 size = roundup(sky2->netdev->mtu + ETH_HLEN + VLAN_HLEN, 8);


 return (size - 8) / sizeof(u32);
}
