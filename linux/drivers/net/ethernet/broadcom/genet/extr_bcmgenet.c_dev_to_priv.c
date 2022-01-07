
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct bcmgenet_priv {int dummy; } ;


 int dev_get_drvdata (struct device*) ;
 struct bcmgenet_priv* netdev_priv (int ) ;

__attribute__((used)) static inline struct bcmgenet_priv *dev_to_priv(struct device *dev)
{
 return netdev_priv(dev_get_drvdata(dev));
}
