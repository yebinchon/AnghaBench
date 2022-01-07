
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pktq {int dummy; } ;
struct brcmf_bus {int dev; TYPE_1__* ops; } ;
struct TYPE_2__ {struct pktq* (* gettxq ) (int ) ;} ;


 int ENOENT ;
 struct pktq* ERR_PTR (int ) ;
 struct pktq* stub1 (int ) ;

__attribute__((used)) static inline
struct pktq *brcmf_bus_gettxq(struct brcmf_bus *bus)
{
 if (!bus->ops->gettxq)
  return ERR_PTR(-ENOENT);

 return bus->ops->gettxq(bus->dev);
}
