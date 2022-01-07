
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev_addr; } ;


 int AVE_PFNUM_UNICAST ;
 int AVE_RXMAC1R ;
 int AVE_RXMAC2R ;
 int ave_hw_write_macaddr (struct net_device*,int ,int ,int ) ;
 int ave_pfsel_set_macaddr (struct net_device*,int ,int ,int) ;

__attribute__((used)) static void ave_macaddr_init(struct net_device *ndev)
{
 ave_hw_write_macaddr(ndev, ndev->dev_addr, AVE_RXMAC1R, AVE_RXMAC2R);


 ave_pfsel_set_macaddr(ndev, AVE_PFNUM_UNICAST, ndev->dev_addr, 6);
}
