
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fec_enet_private {int itr_clk_rate; } ;


 struct fec_enet_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int fec_enet_us_to_itr_clock(struct net_device *ndev, int us)
{
 struct fec_enet_private *fep = netdev_priv(ndev);

 return us * (fep->itr_clk_rate / 64000) / 1000;
}
