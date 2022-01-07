
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct of_device_id {struct mpc5xxx_can_data* data; } ;
struct net_device {int irq; } ;
struct mscan_priv {int reg_base; } ;
struct mpc5xxx_can_data {int (* put_clock ) (struct platform_device*) ;} ;


 int free_candev (struct net_device*) ;
 int iounmap (int ) ;
 int irq_dispose_mapping (int ) ;
 int mpc5xxx_can_table ;
 struct mscan_priv* netdev_priv (struct net_device*) ;
 struct of_device_id* of_match_device (int ,int *) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int stub1 (struct platform_device*) ;
 int unregister_mscandev (struct net_device*) ;

__attribute__((used)) static int mpc5xxx_can_remove(struct platform_device *ofdev)
{
 const struct of_device_id *match;
 const struct mpc5xxx_can_data *data;
 struct net_device *dev = platform_get_drvdata(ofdev);
 struct mscan_priv *priv = netdev_priv(dev);

 match = of_match_device(mpc5xxx_can_table, &ofdev->dev);
 data = match ? match->data : ((void*)0);

 unregister_mscandev(dev);
 if (data && data->put_clock)
  data->put_clock(ofdev);
 iounmap(priv->reg_base);
 irq_dispose_mapping(dev->irq);
 free_candev(dev);

 return 0;
}
