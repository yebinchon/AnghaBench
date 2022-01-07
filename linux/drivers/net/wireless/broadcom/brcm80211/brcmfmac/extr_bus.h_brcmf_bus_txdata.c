
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct brcmf_bus {int dev; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* txdata ) (int ,struct sk_buff*) ;} ;


 int stub1 (int ,struct sk_buff*) ;

__attribute__((used)) static inline int brcmf_bus_txdata(struct brcmf_bus *bus, struct sk_buff *skb)
{
 return bus->ops->txdata(bus->dev, skb);
}
