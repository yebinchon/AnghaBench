
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ddb_output {TYPE_3__* dma; TYPE_1__* port; } ;
struct ddb_input {TYPE_2__* dma; } ;
struct TYPE_6__ {int cbuf; int coff; } ;
struct TYPE_5__ {int stat; } ;
struct TYPE_4__ {int dev; } ;


 int DMA_BUFFER_ACK (TYPE_3__*) ;
 int ddbwritel (int ,int,int ) ;

__attribute__((used)) static void input_write_output(struct ddb_input *input,
          struct ddb_output *output)
{
 ddbwritel(output->port->dev,
    input->dma->stat, DMA_BUFFER_ACK(output->dma));
 output->dma->cbuf = (input->dma->stat >> 11) & 0x1f;
 output->dma->coff = (input->dma->stat & 0x7ff) << 7;
}
