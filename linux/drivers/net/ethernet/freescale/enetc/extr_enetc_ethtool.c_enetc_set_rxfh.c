
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct enetc_ndev_priv {TYPE_1__* si; } ;
struct enetc_hw {scalar_t__ port; } ;
struct TYPE_2__ {int num_rss; struct enetc_hw hw; } ;


 int enetc_set_rss_key (struct enetc_hw*,int const*) ;
 int enetc_set_rss_table (TYPE_1__*,int const*,int ) ;
 struct enetc_ndev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int enetc_set_rxfh(struct net_device *ndev, const u32 *indir,
     const u8 *key, const u8 hfunc)
{
 struct enetc_ndev_priv *priv = netdev_priv(ndev);
 struct enetc_hw *hw = &priv->si->hw;
 int err = 0;


 if (key && hw->port)
  enetc_set_rss_key(hw, key);


 if (indir)
  err = enetc_set_rss_table(priv->si, indir, priv->si->num_rss);

 return err;
}
