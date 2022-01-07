
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;


 int free_candev (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int unregister_candev (struct net_device*) ;

__attribute__((used)) static int ifi_canfd_plat_remove(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);

 unregister_candev(ndev);
 platform_set_drvdata(pdev, ((void*)0));
 free_candev(ndev);

 return 0;
}
