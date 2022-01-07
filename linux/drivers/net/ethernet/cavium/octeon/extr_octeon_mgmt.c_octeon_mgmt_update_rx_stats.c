
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct octeon_mgmt {int lock; scalar_t__ agl; } ;
struct TYPE_2__ {int rx_dropped; int rx_errors; } ;
struct net_device {TYPE_1__ stats; } ;


 scalar_t__ AGL_GMX_RX_STATS_PKTS_BAD ;
 scalar_t__ AGL_GMX_RX_STATS_PKTS_DRP ;
 scalar_t__ cvmx_read_csr (scalar_t__) ;
 struct octeon_mgmt* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void octeon_mgmt_update_rx_stats(struct net_device *netdev)
{
 struct octeon_mgmt *p = netdev_priv(netdev);
 unsigned long flags;
 u64 drop, bad;


 drop = cvmx_read_csr(p->agl + AGL_GMX_RX_STATS_PKTS_DRP);
 bad = cvmx_read_csr(p->agl + AGL_GMX_RX_STATS_PKTS_BAD);

 if (drop || bad) {

  spin_lock_irqsave(&p->lock, flags);
  netdev->stats.rx_errors += bad;
  netdev->stats.rx_dropped += drop;
  spin_unlock_irqrestore(&p->lock, flags);
 }
}
