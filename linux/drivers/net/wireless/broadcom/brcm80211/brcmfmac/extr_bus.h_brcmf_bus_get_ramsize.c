
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcmf_bus {int dev; TYPE_1__* ops; } ;
struct TYPE_2__ {size_t (* get_ramsize ) (int ) ;} ;


 size_t stub1 (int ) ;

__attribute__((used)) static inline size_t brcmf_bus_get_ramsize(struct brcmf_bus *bus)
{
 if (!bus->ops->get_ramsize)
  return 0;

 return bus->ops->get_ramsize(bus->dev);
}
