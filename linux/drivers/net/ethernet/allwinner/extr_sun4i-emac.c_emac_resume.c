
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
struct emac_board_info {int dummy; } ;


 int emac_init_device (struct net_device*) ;
 int emac_reset (struct emac_board_info*) ;
 struct emac_board_info* netdev_priv (struct net_device*) ;
 int netif_device_attach (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int emac_resume(struct platform_device *dev)
{
 struct net_device *ndev = platform_get_drvdata(dev);
 struct emac_board_info *db = netdev_priv(ndev);

 emac_reset(db);
 emac_init_device(ndev);
 netif_device_attach(ndev);

 return 0;
}
