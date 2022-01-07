
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ddb_input {TYPE_2__* dma; TYPE_1__* port; } ;
struct ddb {int dummy; } ;
struct TYPE_4__ {int lock; scalar_t__ running; } ;
struct TYPE_3__ {int lnr; struct ddb* dev; } ;


 int DDB_LINK_TAG (int ) ;
 int DMA_BUFFER_CONTROL (TYPE_2__*) ;
 int TS_CONTROL (struct ddb_input*) ;
 int ddbwritel (struct ddb*,int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void ddb_input_stop(struct ddb_input *input)
{
 struct ddb *dev = input->port->dev;
 u32 tag = DDB_LINK_TAG(input->port->lnr);

 spin_lock_irq(&input->dma->lock);

 ddbwritel(dev, 0, tag | TS_CONTROL(input));

 ddbwritel(dev, 0, DMA_BUFFER_CONTROL(input->dma));
 input->dma->running = 0;
 spin_unlock_irq(&input->dma->lock);
}
