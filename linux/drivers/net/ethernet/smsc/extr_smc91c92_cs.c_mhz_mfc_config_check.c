
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {int io_lines; TYPE_1__** resource; } ;
struct TYPE_2__ {int start; int end; int flags; } ;


 int ENODEV ;
 int IO_DATA_PATH_WIDTH ;
 int IO_DATA_PATH_WIDTH_8 ;
 int IO_DATA_PATH_WIDTH_AUTO ;
 int pcmcia_request_io (struct pcmcia_device*) ;

__attribute__((used)) static int mhz_mfc_config_check(struct pcmcia_device *p_dev, void *priv_data)
{
 int k;
 p_dev->io_lines = 16;
 p_dev->resource[1]->start = p_dev->resource[0]->start;
 p_dev->resource[1]->end = 8;
 p_dev->resource[1]->flags &= ~IO_DATA_PATH_WIDTH;
 p_dev->resource[1]->flags |= IO_DATA_PATH_WIDTH_8;
 p_dev->resource[0]->end = 16;
 p_dev->resource[0]->flags &= ~IO_DATA_PATH_WIDTH;
 p_dev->resource[0]->flags |= IO_DATA_PATH_WIDTH_AUTO;
 for (k = 0; k < 0x400; k += 0x10) {
  if (k & 0x80)
   continue;
  p_dev->resource[0]->start = k ^ 0x300;
  if (!pcmcia_request_io(p_dev))
   return 0;
 }
 return -ENODEV;
}
