
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {unsigned char* dev_addr; } ;


 int AVE_PFNUM_BROADCAST ;
 int AVE_PFNUM_FILTER ;
 int AVE_PFNUM_UNICAST ;
 int AVE_PF_SIZE ;
 int ETH_ALEN ;
 int ave_pfsel_set_macaddr (struct net_device*,int ,unsigned char*,int) ;
 int ave_pfsel_set_promisc (struct net_device*,int ,int ) ;
 int ave_pfsel_stop (struct net_device*,int) ;
 int eth_broadcast_addr (unsigned char*) ;

__attribute__((used)) static void ave_pfsel_init(struct net_device *ndev)
{
 unsigned char bcast_mac[ETH_ALEN];
 int i;

 eth_broadcast_addr(bcast_mac);

 for (i = 0; i < AVE_PF_SIZE; i++)
  ave_pfsel_stop(ndev, i);


 ave_pfsel_set_promisc(ndev, AVE_PFNUM_FILTER, 0);


 ave_pfsel_set_macaddr(ndev, AVE_PFNUM_UNICAST, ndev->dev_addr, 6);


 ave_pfsel_set_macaddr(ndev, AVE_PFNUM_BROADCAST, bcast_mac, 6);
}
