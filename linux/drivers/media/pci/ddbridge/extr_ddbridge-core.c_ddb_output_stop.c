
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ddb_output {TYPE_2__* dma; TYPE_1__* port; } ;
struct ddb {int dummy; } ;
struct TYPE_4__ {int lock; scalar_t__ running; } ;
struct TYPE_3__ {struct ddb* dev; } ;


 int DMA_BUFFER_CONTROL (TYPE_2__*) ;
 int TS_CONTROL (struct ddb_output*) ;
 int ddbwritel (struct ddb*,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void ddb_output_stop(struct ddb_output *output)
{
 struct ddb *dev = output->port->dev;

 spin_lock_irq(&output->dma->lock);

 ddbwritel(dev, 0, TS_CONTROL(output));

 ddbwritel(dev, 0, DMA_BUFFER_CONTROL(output->dma));
 output->dma->running = 0;
 spin_unlock_irq(&output->dma->lock);
}
