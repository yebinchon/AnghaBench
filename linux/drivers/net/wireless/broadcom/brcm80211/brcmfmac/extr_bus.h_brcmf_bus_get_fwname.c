
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcmf_bus {int dev; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_fwname ) (int ,char const*,unsigned char*) ;} ;


 int stub1 (int ,char const*,unsigned char*) ;

__attribute__((used)) static inline
int brcmf_bus_get_fwname(struct brcmf_bus *bus, const char *ext,
    unsigned char *fw_name)
{
 return bus->ops->get_fwname(bus->dev, ext, fw_name);
}
