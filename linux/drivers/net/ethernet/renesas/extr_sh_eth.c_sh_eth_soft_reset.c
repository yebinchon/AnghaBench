
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EDMR ;
 int EDMR_SRST_ETHER ;
 int mdelay (int) ;
 int sh_eth_modify (struct net_device*,int ,int ,int ) ;

__attribute__((used)) static int sh_eth_soft_reset(struct net_device *ndev)
{
 sh_eth_modify(ndev, EDMR, EDMR_SRST_ETHER, EDMR_SRST_ETHER);
 mdelay(3);
 sh_eth_modify(ndev, EDMR, EDMR_SRST_ETHER, 0);

 return 0;
}
