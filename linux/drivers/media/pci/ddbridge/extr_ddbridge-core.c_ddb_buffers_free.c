
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ddb_port {TYPE_2__* output; TYPE_1__** input; } ;
struct ddb {int port_num; int pdev; struct ddb_port* port; } ;
struct TYPE_4__ {scalar_t__ dma; } ;
struct TYPE_3__ {scalar_t__ dma; } ;


 int dma_free (int ,scalar_t__,int) ;

void ddb_buffers_free(struct ddb *dev)
{
 int i;
 struct ddb_port *port;

 for (i = 0; i < dev->port_num; i++) {
  port = &dev->port[i];

  if (port->input[0] && port->input[0]->dma)
   dma_free(dev->pdev, port->input[0]->dma, 0);
  if (port->input[1] && port->input[1]->dma)
   dma_free(dev->pdev, port->input[1]->dma, 0);
  if (port->output && port->output->dma)
   dma_free(dev->pdev, port->output->dma, 1);
 }
}
