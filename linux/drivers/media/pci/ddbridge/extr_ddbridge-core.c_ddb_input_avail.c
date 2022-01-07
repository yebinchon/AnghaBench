
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct ddb_input {TYPE_2__* dma; TYPE_1__* port; } ;
struct ddb {int dev; } ;
struct TYPE_5__ {int stat; int cbuf; } ;
struct TYPE_4__ {struct ddb* dev; } ;


 int DMA_BUFFER_ACK (TYPE_2__*) ;
 int DMA_BUFFER_CONTROL (TYPE_2__*) ;
 int ddbreadl (struct ddb*,int ) ;
 int ddbwritel (struct ddb*,int,int ) ;
 int dev_err (int ,char*,int,int,int) ;

__attribute__((used)) static u32 ddb_input_avail(struct ddb_input *input)
{
 struct ddb *dev = input->port->dev;
 u32 idx, off, stat = input->dma->stat;
 u32 ctrl = ddbreadl(dev, DMA_BUFFER_CONTROL(input->dma));

 idx = (stat >> 11) & 0x1f;
 off = (stat & 0x7ff) << 7;

 if (ctrl & 4) {
  dev_err(dev->dev, "IA %d %d %08x\n", idx, off, ctrl);
  ddbwritel(dev, stat, DMA_BUFFER_ACK(input->dma));
  return 0;
 }
 if (input->dma->cbuf != idx)
  return 188;
 return 0;
}
