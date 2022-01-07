
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rcar_csi2 {int dev; } ;
typedef int irqreturn_t ;


 int INTERRSTATE_REG ;
 int INTSTATE_REG ;
 int IRQ_HANDLED ;
 int IRQ_WAKE_THREAD ;
 int dev_info (int ,char*) ;
 int rcsi2_read (struct rcar_csi2*,int ) ;
 int rcsi2_write (struct rcar_csi2*,int ,int ) ;

__attribute__((used)) static irqreturn_t rcsi2_irq(int irq, void *data)
{
 struct rcar_csi2 *priv = data;
 u32 status, err_status;

 status = rcsi2_read(priv, INTSTATE_REG);
 err_status = rcsi2_read(priv, INTERRSTATE_REG);

 if (!status)
  return IRQ_HANDLED;

 rcsi2_write(priv, INTSTATE_REG, status);

 if (!err_status)
  return IRQ_HANDLED;

 rcsi2_write(priv, INTERRSTATE_REG, err_status);

 dev_info(priv->dev, "Transfer error, restarting CSI-2 receiver\n");

 return IRQ_WAKE_THREAD;
}
