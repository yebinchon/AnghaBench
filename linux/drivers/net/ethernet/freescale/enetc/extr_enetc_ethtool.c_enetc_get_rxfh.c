
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


 int ENETC_PRSSK (int) ;
 int ENETC_RSSHASH_KEY_SIZE ;
 int ETH_RSS_HASH_TOP ;
 int enetc_get_rss_table (TYPE_1__*,int *,int ) ;
 int enetc_port_rd (struct enetc_hw*,int ) ;
 struct enetc_ndev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int enetc_get_rxfh(struct net_device *ndev, u32 *indir, u8 *key,
     u8 *hfunc)
{
 struct enetc_ndev_priv *priv = netdev_priv(ndev);
 struct enetc_hw *hw = &priv->si->hw;
 int err = 0, i;


 if (hfunc)
  *hfunc = ETH_RSS_HASH_TOP;


 if (key && hw->port)
  for (i = 0; i < ENETC_RSSHASH_KEY_SIZE / 4; i++)
   ((u32 *)key)[i] = enetc_port_rd(hw, ENETC_PRSSK(i));


 if (indir)
  err = enetc_get_rss_table(priv->si, indir, priv->si->num_rss);

 return err;
}
