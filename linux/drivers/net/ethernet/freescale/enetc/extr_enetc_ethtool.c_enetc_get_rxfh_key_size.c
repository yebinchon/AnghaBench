
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct enetc_ndev_priv {TYPE_2__* si; } ;
struct TYPE_3__ {scalar_t__ port; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;


 int ENETC_RSSHASH_KEY_SIZE ;
 struct enetc_ndev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 enetc_get_rxfh_key_size(struct net_device *ndev)
{
 struct enetc_ndev_priv *priv = netdev_priv(ndev);


 return (priv->si->hw.port) ? ENETC_RSSHASH_KEY_SIZE : 0;
}
