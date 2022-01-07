
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;


 int arc_emac_remove (struct net_device*) ;
 int free_netdev (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int emac_arc_remove(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);
 int err;

 err = arc_emac_remove(ndev);
 free_netdev(ndev);
 return err;
}
