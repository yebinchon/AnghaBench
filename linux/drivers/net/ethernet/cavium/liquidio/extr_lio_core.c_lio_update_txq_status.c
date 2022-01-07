
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct octeon_instr_queue {size_t ifidx; int q_index; } ;
struct octeon_device {TYPE_4__* props; struct octeon_instr_queue** instr_queue; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {scalar_t__ link_up; } ;
struct TYPE_6__ {TYPE_1__ s; } ;
struct TYPE_7__ {TYPE_2__ link; } ;
struct lio {int oct_dev; TYPE_3__ linfo; } ;
struct TYPE_8__ {struct net_device* netdev; } ;


 struct lio* GET_LIO (struct net_device*) ;
 int INCR_INSTRQUEUE_PKT_COUNT (int ,int,int ,int) ;
 scalar_t__ __netif_subqueue_stopped (struct net_device*,int ) ;
 int netif_wake_subqueue (struct net_device*,int ) ;
 int octnet_iq_is_full (struct octeon_device*,int) ;
 int tx_restart ;

__attribute__((used)) static void lio_update_txq_status(struct octeon_device *oct, int iq_num)
{
 struct octeon_instr_queue *iq = oct->instr_queue[iq_num];
 struct net_device *netdev;
 struct lio *lio;

 netdev = oct->props[iq->ifidx].netdev;




 if (!netdev)
  return;

 lio = GET_LIO(netdev);
 if (__netif_subqueue_stopped(netdev, iq->q_index) &&
     lio->linfo.link.s.link_up &&
     (!octnet_iq_is_full(oct, iq_num))) {
  netif_wake_subqueue(netdev, iq->q_index);
  INCR_INSTRQUEUE_PKT_COUNT(lio->oct_dev, iq_num,
       tx_restart, 1);
 }
}
