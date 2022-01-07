
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_eth_private {TYPE_1__* cd; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ select_mii; scalar_t__ csmr; } ;


 int CSMR ;
 int EDMR ;
 int EDMR_SRST_GETHER ;
 int EDSR ;
 int EDSR_ENALL ;
 int RDFAR ;
 int RDFFR ;
 int RDFXR ;
 int RDLAR ;
 int TDFAR ;
 int TDFFR ;
 int TDFXR ;
 int TDLAR ;
 struct sh_eth_private* netdev_priv (struct net_device*) ;
 int sh_eth_check_soft_reset (struct net_device*) ;
 int sh_eth_modify (struct net_device*,int ,int ,int ) ;
 int sh_eth_select_mii (struct net_device*) ;
 int sh_eth_write (struct net_device*,int ,int ) ;

__attribute__((used)) static int sh_eth_soft_reset_gether(struct net_device *ndev)
{
 struct sh_eth_private *mdp = netdev_priv(ndev);
 int ret;

 sh_eth_write(ndev, EDSR_ENALL, EDSR);
 sh_eth_modify(ndev, EDMR, EDMR_SRST_GETHER, EDMR_SRST_GETHER);

 ret = sh_eth_check_soft_reset(ndev);
 if (ret)
  return ret;


 sh_eth_write(ndev, 0, TDLAR);
 sh_eth_write(ndev, 0, TDFAR);
 sh_eth_write(ndev, 0, TDFXR);
 sh_eth_write(ndev, 0, TDFFR);
 sh_eth_write(ndev, 0, RDLAR);
 sh_eth_write(ndev, 0, RDFAR);
 sh_eth_write(ndev, 0, RDFXR);
 sh_eth_write(ndev, 0, RDFFR);


 if (mdp->cd->csmr)
  sh_eth_write(ndev, 0, CSMR);


 if (mdp->cd->select_mii)
  sh_eth_select_mii(ndev);

 return ret;
}
