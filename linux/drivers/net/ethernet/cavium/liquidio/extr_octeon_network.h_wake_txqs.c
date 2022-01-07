
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int real_num_tx_queues; } ;
struct TYPE_7__ {TYPE_2__* txpciq; } ;
struct lio {TYPE_4__* oct_dev; TYPE_3__ linfo; } ;
struct TYPE_8__ {int num_iqs; } ;
struct TYPE_5__ {int q_no; } ;
struct TYPE_6__ {TYPE_1__ s; } ;


 struct lio* GET_LIO (struct net_device*) ;
 int INCR_INSTRQUEUE_PKT_COUNT (TYPE_4__*,int,int ,int) ;
 scalar_t__ __netif_subqueue_stopped (struct net_device*,int) ;
 int netif_wake_subqueue (struct net_device*,int) ;
 int tx_restart ;

__attribute__((used)) static inline void wake_txqs(struct net_device *netdev)
{
 struct lio *lio = GET_LIO(netdev);
 int i, qno;

 for (i = 0; i < netdev->real_num_tx_queues; i++) {
  qno = lio->linfo.txpciq[i % lio->oct_dev->num_iqs].s.q_no;

  if (__netif_subqueue_stopped(netdev, i)) {
   INCR_INSTRQUEUE_PKT_COUNT(lio->oct_dev, qno,
        tx_restart, 1);
   netif_wake_subqueue(netdev, i);
  }
 }
}
