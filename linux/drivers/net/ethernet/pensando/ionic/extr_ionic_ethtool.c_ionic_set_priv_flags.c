
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ionic_lif {int flags; int state; } ;


 int IONIC_LIF_SW_DEBUG_STATS ;
 int PRIV_F_SW_DBG_STATS ;
 int clear_bit (int ,int ) ;
 struct ionic_lif* netdev_priv (struct net_device*) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int ionic_set_priv_flags(struct net_device *netdev, u32 priv_flags)
{
 struct ionic_lif *lif = netdev_priv(netdev);
 u32 flags = lif->flags;

 clear_bit(IONIC_LIF_SW_DEBUG_STATS, lif->state);
 if (priv_flags & PRIV_F_SW_DBG_STATS)
  set_bit(IONIC_LIF_SW_DEBUG_STATS, lif->state);

 if (flags != lif->flags)
  lif->flags = flags;

 return 0;
}
