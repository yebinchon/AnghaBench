
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int real_num_tx_queues; } ;
struct TYPE_4__ {scalar_t__ link_up; } ;
struct TYPE_5__ {TYPE_1__ s; } ;
struct TYPE_6__ {TYPE_2__ link; } ;
struct lio {TYPE_3__ linfo; } ;


 struct lio* GET_LIO (struct net_device*) ;
 int netif_start_subqueue (struct net_device*,int) ;

__attribute__((used)) static inline void start_txqs(struct net_device *netdev)
{
 struct lio *lio = GET_LIO(netdev);
 int i;

 if (lio->linfo.link.s.link_up) {
  for (i = 0; i < netdev->real_num_tx_queues; i++)
   netif_start_subqueue(netdev, i);
 }
}
