
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int work; } ;
struct TYPE_4__ {scalar_t__ wq; TYPE_1__ wk; } ;
struct lio {TYPE_2__ link_status_wq; } ;


 struct lio* GET_LIO (struct net_device*) ;
 int cancel_delayed_work_sync (int *) ;
 int destroy_workqueue (scalar_t__) ;

__attribute__((used)) static inline void cleanup_link_status_change_wq(struct net_device *netdev)
{
 struct lio *lio = GET_LIO(netdev);

 if (lio->link_status_wq.wq) {
  cancel_delayed_work_sync(&lio->link_status_wq.wk.work);
  destroy_workqueue(lio->link_status_wq.wq);
 }
}
