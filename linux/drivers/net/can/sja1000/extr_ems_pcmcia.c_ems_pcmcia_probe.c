
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcmcia_device {int config_index; int io_lines; TYPE_1__** resource; int dev; int config_base; int config_regs; int config_flags; } ;
struct TYPE_3__ {int end; int flags; int start; } ;


 int CONF_ENABLE_IRQ ;
 int IO_DATA_PATH_WIDTH_16 ;
 int IO_DATA_PATH_WIDTH_8 ;
 int PRESENT_OPTION ;
 int WIN_DATA_WIDTH_8 ;
 int WIN_ENABLE ;
 int WIN_MEMORY_TYPE_CM ;
 int dev_err (int *,char*,int) ;
 int ems_pcmcia_add_card (struct pcmcia_device*,int) ;
 int pcmcia_enable_device (struct pcmcia_device*) ;
 int pcmcia_map_mem_page (struct pcmcia_device*,TYPE_1__*,int ) ;
 int pcmcia_request_window (struct pcmcia_device*,TYPE_1__*,int ) ;

__attribute__((used)) static int ems_pcmcia_probe(struct pcmcia_device *dev)
{
 int csval;


 dev->config_flags |= CONF_ENABLE_IRQ;
 dev->config_index = 1;
 dev->config_regs = PRESENT_OPTION;


 dev->resource[0]->end = 16;
 dev->resource[0]->flags |= IO_DATA_PATH_WIDTH_8;
 dev->resource[1]->end = 16;
 dev->resource[1]->flags |= IO_DATA_PATH_WIDTH_16;
 dev->io_lines = 5;


 dev->resource[2]->flags =
  (WIN_DATA_WIDTH_8 | WIN_MEMORY_TYPE_CM | WIN_ENABLE);
 dev->resource[2]->start = dev->resource[2]->end = 0;

 csval = pcmcia_request_window(dev, dev->resource[2], 0);
 if (csval) {
  dev_err(&dev->dev, "pcmcia_request_window failed (err=%d)\n",
   csval);
  return 0;
 }

 csval = pcmcia_map_mem_page(dev, dev->resource[2], dev->config_base);
 if (csval) {
  dev_err(&dev->dev, "pcmcia_map_mem_page failed (err=%d)\n",
   csval);
  return 0;
 }

 csval = pcmcia_enable_device(dev);
 if (csval) {
  dev_err(&dev->dev, "pcmcia_enable_device failed (err=%d)\n",
   csval);
  return 0;
 }

 ems_pcmcia_add_card(dev, dev->resource[2]->start);
 return 0;
}
