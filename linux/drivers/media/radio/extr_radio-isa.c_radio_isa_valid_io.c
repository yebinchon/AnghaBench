
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radio_isa_driver {int num_of_io_ports; int* io_ports; } ;



__attribute__((used)) static bool radio_isa_valid_io(const struct radio_isa_driver *drv, int io)
{
 int i;

 for (i = 0; i < drv->num_of_io_ports; i++)
  if (drv->io_ports[i] == io)
   return 1;
 return 0;
}
