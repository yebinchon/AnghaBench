
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcmf_bus {int dev; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* wowl_config ) (int ,int) ;} ;


 int stub1 (int ,int) ;

__attribute__((used)) static inline
void brcmf_bus_wowl_config(struct brcmf_bus *bus, bool enabled)
{
 if (bus->ops->wowl_config)
  bus->ops->wowl_config(bus->dev, enabled);
}
