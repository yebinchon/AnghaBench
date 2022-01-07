
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct fec_enet_private {scalar_t__ hwp; } ;
struct TYPE_3__ {scalar_t__ offset; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ FEC_MIB_CTRLSTAT ;
 int FEC_MIB_CTRLSTAT_DISABLE ;
 TYPE_1__* fec_stats ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void fec_enet_clear_ethtool_stats(struct net_device *dev)
{
 struct fec_enet_private *fep = netdev_priv(dev);
 int i;


 writel(FEC_MIB_CTRLSTAT_DISABLE, fep->hwp + FEC_MIB_CTRLSTAT);

 for (i = 0; i < ARRAY_SIZE(fec_stats); i++)
  writel(0, fep->hwp + fec_stats[i].offset);


 writel(0, fep->hwp + FEC_MIB_CTRLSTAT);
}
