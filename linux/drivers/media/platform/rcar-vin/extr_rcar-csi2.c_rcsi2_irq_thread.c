
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_csi2 {int lock; int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int dev_warn (int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ rcsi2_start (struct rcar_csi2*) ;
 int rcsi2_stop (struct rcar_csi2*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static irqreturn_t rcsi2_irq_thread(int irq, void *data)
{
 struct rcar_csi2 *priv = data;

 mutex_lock(&priv->lock);
 rcsi2_stop(priv);
 usleep_range(1000, 2000);
 if (rcsi2_start(priv))
  dev_warn(priv->dev, "Failed to restart CSI-2 receiver\n");
 mutex_unlock(&priv->lock);

 return IRQ_HANDLED;
}
