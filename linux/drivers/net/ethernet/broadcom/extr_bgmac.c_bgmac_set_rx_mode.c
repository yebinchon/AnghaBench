
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; } ;
struct bgmac {int dummy; } ;


 int BGMAC_CMDCFG_PROM ;
 int IFF_PROMISC ;
 int bgmac_cmdcfg_maskset (struct bgmac*,int ,int ,int) ;
 struct bgmac* netdev_priv (struct net_device*) ;

__attribute__((used)) static void bgmac_set_rx_mode(struct net_device *net_dev)
{
 struct bgmac *bgmac = netdev_priv(net_dev);

 if (net_dev->flags & IFF_PROMISC)
  bgmac_cmdcfg_maskset(bgmac, ~0, BGMAC_CMDCFG_PROM, 1);
 else
  bgmac_cmdcfg_maskset(bgmac, ~BGMAC_CMDCFG_PROM, 0, 1);
}
