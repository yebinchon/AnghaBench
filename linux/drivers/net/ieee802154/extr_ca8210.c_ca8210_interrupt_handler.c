
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ca8210_priv {TYPE_1__* spi; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 int IRQ_HANDLED ;
 int ca8210_spi_transfer (TYPE_1__*,int *,int ) ;
 int dev_dbg (int *,char*) ;
 int dev_warn (int *,char*,int) ;

__attribute__((used)) static irqreturn_t ca8210_interrupt_handler(int irq, void *dev_id)
{
 struct ca8210_priv *priv = dev_id;
 int status;

 dev_dbg(&priv->spi->dev, "irq: Interrupt occurred\n");
 do {
  status = ca8210_spi_transfer(priv->spi, ((void*)0), 0);
  if (status && (status != -EBUSY)) {
   dev_warn(
    &priv->spi->dev,
    "spi read failed, returned %d\n",
    status
   );
  }
 } while (status == -EBUSY);
 return IRQ_HANDLED;
}
