
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ca8210_priv {int irq_workqueue; int mlme_workqueue; } ;


 int destroy_workqueue (int ) ;
 int flush_workqueue (int ) ;

__attribute__((used)) static void ca8210_dev_com_clear(struct ca8210_priv *priv)
{
 flush_workqueue(priv->mlme_workqueue);
 destroy_workqueue(priv->mlme_workqueue);
 flush_workqueue(priv->irq_workqueue);
 destroy_workqueue(priv->irq_workqueue);
}
