
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {int config_index; TYPE_1__** resource; } ;
struct TYPE_2__ {int end; } ;


 int EINVAL ;
 int ENODEV ;
 int try_io_port (struct pcmcia_device*) ;

__attribute__((used)) static int axnet_configcheck(struct pcmcia_device *p_dev, void *priv_data)
{
 if (p_dev->config_index == 0)
  return -EINVAL;

 p_dev->config_index = 0x05;
 if (p_dev->resource[0]->end + p_dev->resource[1]->end < 32)
  return -ENODEV;

 return try_io_port(p_dev);
}
