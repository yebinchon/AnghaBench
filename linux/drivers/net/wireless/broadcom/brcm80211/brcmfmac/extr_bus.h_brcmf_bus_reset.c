
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcmf_bus {int dev; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* reset ) (int ) ;} ;


 int EOPNOTSUPP ;
 int stub1 (int ) ;

__attribute__((used)) static inline
int brcmf_bus_reset(struct brcmf_bus *bus)
{
 if (!bus->ops->reset)
  return -EOPNOTSUPP;

 return bus->ops->reset(bus->dev);
}
