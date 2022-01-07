
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct bcmgenet_priv {int dev; } ;


 int bcmgenet_mii_exit (int ) ;
 int dev_set_drvdata (int *,int *) ;
 struct bcmgenet_priv* dev_to_priv (int *) ;
 int free_netdev (int ) ;
 int unregister_netdev (int ) ;

__attribute__((used)) static int bcmgenet_remove(struct platform_device *pdev)
{
 struct bcmgenet_priv *priv = dev_to_priv(&pdev->dev);

 dev_set_drvdata(&pdev->dev, ((void*)0));
 unregister_netdev(priv->dev);
 bcmgenet_mii_exit(priv->dev);
 free_netdev(priv->dev);

 return 0;
}
