
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {int io_lines; TYPE_1__** resource; } ;
struct TYPE_2__ {int end; int start; int flags; } ;


 int IO_DATA_PATH_WIDTH ;
 int IO_DATA_PATH_WIDTH_16 ;
 int IO_DATA_PATH_WIDTH_8 ;
 int IO_DATA_PATH_WIDTH_AUTO ;
 int pcmcia_request_io (struct pcmcia_device*) ;

__attribute__((used)) static int try_io_port(struct pcmcia_device *link)
{
    int j, ret;
    link->resource[0]->flags &= ~IO_DATA_PATH_WIDTH;
    link->resource[1]->flags &= ~IO_DATA_PATH_WIDTH;
    if (link->resource[0]->end == 32) {
 link->resource[0]->flags |= IO_DATA_PATH_WIDTH_AUTO;

 if (link->resource[1]->end > 0)
     link->resource[1]->flags |= IO_DATA_PATH_WIDTH_8;
    } else {

 link->resource[0]->flags |= IO_DATA_PATH_WIDTH_8;
 link->resource[1]->flags |= IO_DATA_PATH_WIDTH_16;
    }
    if (link->resource[0]->start == 0) {
 for (j = 0; j < 0x400; j += 0x20) {
     link->resource[0]->start = j ^ 0x300;
     link->resource[1]->start = (j ^ 0x300) + 0x10;
     link->io_lines = 16;
     ret = pcmcia_request_io(link);
     if (ret == 0)
      return ret;
 }
 return ret;
    } else {
 return pcmcia_request_io(link);
    }
}
