
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ddb_input {TYPE_2__* dma; TYPE_1__* port; } ;
struct ddb {int dummy; } ;
struct TYPE_6__ {int bufval; int running; int lock; scalar_t__ stat; scalar_t__ coff; scalar_t__ cbuf; } ;
struct TYPE_5__ {scalar_t__ type; struct ddb* dev; } ;


 scalar_t__ DDB_TUNER_DUMMY ;
 int DMA_BASE_WRITE ;
 int DMA_BUFFER_ACK (TYPE_2__*) ;
 int DMA_BUFFER_CONTROL (TYPE_2__*) ;
 int DMA_BUFFER_SIZE (TYPE_2__*) ;
 int TS_CONTROL (struct ddb_input*) ;
 int TS_CONTROL2 (struct ddb_input*) ;
 int ddbwritel (struct ddb*,int,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void ddb_input_start(struct ddb_input *input)
{
 struct ddb *dev = input->port->dev;

 spin_lock_irq(&input->dma->lock);
 input->dma->cbuf = 0;
 input->dma->coff = 0;
 input->dma->stat = 0;
 ddbwritel(dev, 0, DMA_BUFFER_CONTROL(input->dma));

 ddbwritel(dev, 0, TS_CONTROL(input));
 ddbwritel(dev, 2, TS_CONTROL(input));
 ddbwritel(dev, 0, TS_CONTROL(input));

 ddbwritel(dev, input->dma->bufval,
    DMA_BUFFER_SIZE(input->dma));
 ddbwritel(dev, 0, DMA_BUFFER_ACK(input->dma));
 ddbwritel(dev, 1, DMA_BASE_WRITE);
 ddbwritel(dev, 3, DMA_BUFFER_CONTROL(input->dma));

 ddbwritel(dev, 0x09, TS_CONTROL(input));

 if (input->port->type == DDB_TUNER_DUMMY)
  ddbwritel(dev, 0x000fff01, TS_CONTROL2(input));

 input->dma->running = 1;
 spin_unlock_irq(&input->dma->lock);
}
