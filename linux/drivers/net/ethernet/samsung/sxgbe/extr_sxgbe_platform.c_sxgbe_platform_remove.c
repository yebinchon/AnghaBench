
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;


 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int sxgbe_drv_remove (struct net_device*) ;

__attribute__((used)) static int sxgbe_platform_remove(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);
 int ret = sxgbe_drv_remove(ndev);

 return ret;
}
