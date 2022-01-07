
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vub300_mmc_host {int kref; int pollwork; } ;


 int kref_get (int *) ;
 int kref_put (int *,int ) ;
 int pollworkqueue ;
 scalar_t__ queue_delayed_work (int ,int *,int) ;
 int vub300_delete ;

__attribute__((used)) static void vub300_queue_poll_work(struct vub300_mmc_host *vub300, int delay)
{
 kref_get(&vub300->kref);
 if (queue_delayed_work(pollworkqueue, &vub300->pollwork, delay)) {






 } else {





  kref_put(&vub300->kref, vub300_delete);
 }
}
