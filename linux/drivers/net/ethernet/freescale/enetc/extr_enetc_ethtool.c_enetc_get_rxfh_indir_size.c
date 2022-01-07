
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct enetc_ndev_priv {TYPE_1__* si; } ;
struct TYPE_2__ {int num_rss; } ;


 struct enetc_ndev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 enetc_get_rxfh_indir_size(struct net_device *ndev)
{
 struct enetc_ndev_priv *priv = netdev_priv(ndev);


 return priv->si->num_rss;
}
