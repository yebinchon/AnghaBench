
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ca8210_priv {TYPE_1__* spi; void* irq_workqueue; void* mlme_workqueue; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int WQ_UNBOUND ;
 void* alloc_ordered_workqueue (char*,int ) ;
 int dev_crit (int *,char*) ;

__attribute__((used)) static int ca8210_dev_com_init(struct ca8210_priv *priv)
{
 priv->mlme_workqueue = alloc_ordered_workqueue(
  "MLME work queue",
  WQ_UNBOUND
 );
 if (!priv->mlme_workqueue) {
  dev_crit(&priv->spi->dev, "alloc of mlme_workqueue failed!\n");
  return -ENOMEM;
 }

 priv->irq_workqueue = alloc_ordered_workqueue(
  "ca8210 irq worker",
  WQ_UNBOUND
 );
 if (!priv->irq_workqueue) {
  dev_crit(&priv->spi->dev, "alloc of irq_workqueue failed!\n");
  return -ENOMEM;
 }

 return 0;
}
