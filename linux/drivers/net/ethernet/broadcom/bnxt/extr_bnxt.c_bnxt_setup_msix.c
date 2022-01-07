
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {char* name; } ;
struct bnxt {int tx_nr_rings_per_tc; int cp_nr_rings; int flags; int rx_nr_rings; TYPE_1__* irq_tbl; struct net_device* dev; } ;
struct TYPE_2__ {int handler; int name; } ;


 int BNXT_FLAG_SHARED_RINGS ;
 int bnxt_cp_num_to_irq_num (struct bnxt*,int) ;
 int bnxt_msix ;
 int netdev_get_num_tc (struct net_device*) ;
 int netdev_set_tc_queue (struct net_device*,int,int,int) ;
 int snprintf (int ,int const,char*,char*,char*,int) ;

__attribute__((used)) static void bnxt_setup_msix(struct bnxt *bp)
{
 const int len = sizeof(bp->irq_tbl[0].name);
 struct net_device *dev = bp->dev;
 int tcs, i;

 tcs = netdev_get_num_tc(dev);
 if (tcs > 1) {
  int i, off, count;

  for (i = 0; i < tcs; i++) {
   count = bp->tx_nr_rings_per_tc;
   off = i * count;
   netdev_set_tc_queue(dev, i, count, off);
  }
 }

 for (i = 0; i < bp->cp_nr_rings; i++) {
  int map_idx = bnxt_cp_num_to_irq_num(bp, i);
  char *attr;

  if (bp->flags & BNXT_FLAG_SHARED_RINGS)
   attr = "TxRx";
  else if (i < bp->rx_nr_rings)
   attr = "rx";
  else
   attr = "tx";

  snprintf(bp->irq_tbl[map_idx].name, len, "%s-%s-%d", dev->name,
    attr, i);
  bp->irq_tbl[map_idx].handler = bnxt_msix;
 }
}
