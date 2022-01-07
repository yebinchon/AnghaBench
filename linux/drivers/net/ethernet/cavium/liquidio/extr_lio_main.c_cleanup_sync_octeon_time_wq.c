
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int work; } ;
struct cavium_wq {scalar_t__ wq; TYPE_1__ wk; } ;
struct lio {struct cavium_wq sync_octeon_time_wq; } ;


 struct lio* GET_LIO (struct net_device*) ;
 int cancel_delayed_work_sync (int *) ;
 int destroy_workqueue (scalar_t__) ;

__attribute__((used)) static inline void cleanup_sync_octeon_time_wq(struct net_device *netdev)
{
 struct lio *lio = GET_LIO(netdev);
 struct cavium_wq *time_wq = &lio->sync_octeon_time_wq;

 if (time_wq->wq) {
  cancel_delayed_work_sync(&time_wq->wk.work);
  destroy_workqueue(time_wq->wq);
 }
}
