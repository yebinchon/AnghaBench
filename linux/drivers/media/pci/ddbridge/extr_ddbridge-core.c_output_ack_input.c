
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ddb_output {TYPE_2__* dma; } ;
struct ddb_input {int dma; TYPE_1__* port; } ;
struct TYPE_4__ {int stat; } ;
struct TYPE_3__ {int dev; } ;


 int DMA_BUFFER_ACK (int ) ;
 int ddbwritel (int ,int ,int ) ;

__attribute__((used)) static void output_ack_input(struct ddb_output *output,
        struct ddb_input *input)
{
 ddbwritel(input->port->dev,
    output->dma->stat, DMA_BUFFER_ACK(input->dma));
}
