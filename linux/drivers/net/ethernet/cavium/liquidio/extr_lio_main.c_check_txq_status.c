
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* txpciq; } ;
struct lio {TYPE_4__* oct_dev; TYPE_5__* netdev; TYPE_3__ linfo; } ;
struct TYPE_12__ {int real_num_tx_queues; } ;
struct TYPE_11__ {int num_iqs; } ;
struct TYPE_8__ {int q_no; } ;
struct TYPE_9__ {TYPE_1__ s; } ;


 int INCR_INSTRQUEUE_PKT_COUNT (TYPE_4__*,int,int ,int) ;
 scalar_t__ __netif_subqueue_stopped (TYPE_5__*,int) ;
 int netif_wake_subqueue (TYPE_5__*,int) ;
 scalar_t__ octnet_iq_is_full (TYPE_4__*,int) ;
 int tx_restart ;

__attribute__((used)) static inline int check_txq_status(struct lio *lio)
{
 int numqs = lio->netdev->real_num_tx_queues;
 int ret_val = 0;
 int q, iq;


 for (q = 0; q < numqs; q++) {
  iq = lio->linfo.txpciq[q %
   lio->oct_dev->num_iqs].s.q_no;
  if (octnet_iq_is_full(lio->oct_dev, iq))
   continue;
  if (__netif_subqueue_stopped(lio->netdev, q)) {
   netif_wake_subqueue(lio->netdev, q);
   INCR_INSTRQUEUE_PKT_COUNT(lio->oct_dev, iq,
        tx_restart, 1);
   ret_val++;
  }
 }

 return ret_val;
}
