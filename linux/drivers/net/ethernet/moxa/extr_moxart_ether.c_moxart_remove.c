
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct net_device {int irq; } ;


 int free_irq (int ,struct net_device*) ;
 int free_netdev (struct net_device*) ;
 int moxart_mac_free_memory (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int moxart_remove(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);

 unregister_netdev(ndev);
 free_irq(ndev->irq, ndev);
 moxart_mac_free_memory(ndev);
 free_netdev(ndev);

 return 0;
}
