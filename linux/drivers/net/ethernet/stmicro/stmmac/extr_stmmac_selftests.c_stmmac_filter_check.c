
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stmmac_priv {TYPE_1__* dev; } ;
struct TYPE_2__ {int flags; } ;


 int EOPNOTSUPP ;
 int IFF_PROMISC ;
 int netdev_warn (TYPE_1__*,char*) ;

__attribute__((used)) static int stmmac_filter_check(struct stmmac_priv *priv)
{
 if (!(priv->dev->flags & IFF_PROMISC))
  return 0;

 netdev_warn(priv->dev, "Test can't be run in promiscuous mode!\n");
 return -EOPNOTSUPP;
}
