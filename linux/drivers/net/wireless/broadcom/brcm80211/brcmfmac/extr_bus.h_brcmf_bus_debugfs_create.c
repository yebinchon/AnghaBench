
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcmf_bus {int dev; TYPE_1__* ops; } ;
struct TYPE_2__ {void (* debugfs_create ) (int ) ;} ;


 void stub1 (int ) ;

__attribute__((used)) static inline
void brcmf_bus_debugfs_create(struct brcmf_bus *bus)
{
 if (!bus->ops->debugfs_create)
  return;

 return bus->ops->debugfs_create(bus->dev);
}
