
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
struct m_can_classdev {int dummy; } ;


 int m_can_class_unregister (struct m_can_classdev*) ;
 struct m_can_classdev* netdev_priv (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;

__attribute__((used)) static int m_can_plat_remove(struct platform_device *pdev)
{
 struct net_device *dev = platform_get_drvdata(pdev);
 struct m_can_classdev *mcan_class = netdev_priv(dev);

 m_can_class_unregister(mcan_class);

 platform_set_drvdata(pdev, ((void*)0));

 return 0;
}
