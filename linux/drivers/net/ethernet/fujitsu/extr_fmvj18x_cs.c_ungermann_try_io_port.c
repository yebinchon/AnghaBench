
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {int config_index; TYPE_1__** resource; } ;
struct TYPE_2__ {unsigned int start; } ;


 int pcmcia_request_io (struct pcmcia_device*) ;

__attribute__((used)) static int ungermann_try_io_port(struct pcmcia_device *link)
{
    int ret;
    unsigned int ioaddr;




    for (ioaddr = 0x300; ioaddr < 0x3e0; ioaddr += 0x20) {
 link->resource[0]->start = ioaddr;
 ret = pcmcia_request_io(link);
 if (ret == 0) {

     link->config_index =
  ((link->resource[0]->start & 0x0f0) >> 3) | 0x22;
     return ret;
 }
    }
    return ret;
}
