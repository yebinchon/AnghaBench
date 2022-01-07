
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tx_packets; } ;
struct net_device {TYPE_2__ stats; } ;
struct TYPE_3__ {int (* command ) (struct net_device*,int) ;int (* status ) (struct net_device*) ;} ;
struct arcnet_local {int intmask; int next_tx; int cur_tx; scalar_t__ excnak_pending; scalar_t__ lastload_dest; scalar_t__ lasttrans_dest; TYPE_1__ hw; } ;


 scalar_t__ BUGLVL (int ) ;
 int D_DURING ;
 int D_TX ;
 int EXCNAKflag ;
 int TXFREEflag ;
 int TXcmd ;
 int arc_printk (int ,struct net_device*,char*,int ,int,int,int) ;
 int arcnet_dump_packet (struct net_device*,int,char*,int ) ;
 struct arcnet_local* netdev_priv (struct net_device*) ;
 int stub1 (struct net_device*) ;
 int stub2 (struct net_device*,int) ;

__attribute__((used)) static int go_tx(struct net_device *dev)
{
 struct arcnet_local *lp = netdev_priv(dev);

 arc_printk(D_DURING, dev, "go_tx: status=%Xh, intmask=%Xh, next_tx=%d, cur_tx=%d\n",
     lp->hw.status(dev), lp->intmask, lp->next_tx, lp->cur_tx);

 if (lp->cur_tx != -1 || lp->next_tx == -1)
  return 0;

 if (BUGLVL(D_TX))
  arcnet_dump_packet(dev, lp->next_tx, "go_tx", 0);

 lp->cur_tx = lp->next_tx;
 lp->next_tx = -1;


 lp->hw.command(dev, TXcmd | (lp->cur_tx << 3));

 dev->stats.tx_packets++;
 lp->lasttrans_dest = lp->lastload_dest;
 lp->lastload_dest = 0;
 lp->excnak_pending = 0;
 lp->intmask |= TXFREEflag | EXCNAKflag;

 return 1;
}
