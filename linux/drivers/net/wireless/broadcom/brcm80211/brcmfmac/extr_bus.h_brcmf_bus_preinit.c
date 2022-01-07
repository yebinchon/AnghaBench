
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcmf_bus {int dev; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* preinit ) (int ) ;} ;


 int stub1 (int ) ;

__attribute__((used)) static inline int brcmf_bus_preinit(struct brcmf_bus *bus)
{
 if (!bus->ops->preinit)
  return 0;
 return bus->ops->preinit(bus->dev);
}
