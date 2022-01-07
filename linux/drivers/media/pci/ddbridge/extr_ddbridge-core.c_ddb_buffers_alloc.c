
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ddb_port {int class; TYPE_2__* output; TYPE_1__** input; } ;
struct ddb {int port_num; int pdev; struct ddb_port* port; } ;
struct TYPE_4__ {int dma; } ;
struct TYPE_3__ {int dma; } ;





 int ddb_set_dma_tables (struct ddb*) ;
 int dma_alloc (int ,int ,int) ;

int ddb_buffers_alloc(struct ddb *dev)
{
 int i;
 struct ddb_port *port;

 for (i = 0; i < dev->port_num; i++) {
  port = &dev->port[i];
  switch (port->class) {
  case 128:
   if (port->input[0]->dma)
    if (dma_alloc(dev->pdev, port->input[0]->dma, 0)
     < 0)
     return -1;
   if (port->input[1]->dma)
    if (dma_alloc(dev->pdev, port->input[1]->dma, 0)
     < 0)
     return -1;
   break;
  case 130:
  case 129:
   if (port->input[0]->dma)
    if (dma_alloc(dev->pdev, port->input[0]->dma, 0)
     < 0)
     return -1;
   if (port->output->dma)
    if (dma_alloc(dev->pdev, port->output->dma, 1)
     < 0)
     return -1;
   break;
  default:
   break;
  }
 }
 ddb_set_dma_tables(dev);
 return 0;
}
