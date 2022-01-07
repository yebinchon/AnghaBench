
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
struct brcmf_bus {int dev; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* rxctl ) (int ,unsigned char*,int ) ;} ;


 int stub1 (int ,unsigned char*,int ) ;

__attribute__((used)) static inline
int brcmf_bus_rxctl(struct brcmf_bus *bus, unsigned char *msg, uint len)
{
 return bus->ops->rxctl(bus->dev, msg, len);
}
