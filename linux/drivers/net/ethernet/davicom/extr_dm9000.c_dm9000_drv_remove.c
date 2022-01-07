
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct net_device {int dummy; } ;


 int dev_dbg (int *,char*) ;
 int dm9000_release_board (struct platform_device*,int ) ;
 int free_netdev (struct net_device*) ;
 int netdev_priv (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int
dm9000_drv_remove(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);

 unregister_netdev(ndev);
 dm9000_release_board(pdev, netdev_priv(ndev));
 free_netdev(ndev);

 dev_dbg(&pdev->dev, "released and freed device\n");
 return 0;
}
