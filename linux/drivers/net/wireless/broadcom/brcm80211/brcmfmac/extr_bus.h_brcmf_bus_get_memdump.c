
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcmf_bus {int dev; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_memdump ) (int ,void*,size_t) ;} ;


 int EOPNOTSUPP ;
 int stub1 (int ,void*,size_t) ;

__attribute__((used)) static inline
int brcmf_bus_get_memdump(struct brcmf_bus *bus, void *data, size_t len)
{
 if (!bus->ops->get_memdump)
  return -EOPNOTSUPP;

 return bus->ops->get_memdump(bus->dev, data, len);
}
