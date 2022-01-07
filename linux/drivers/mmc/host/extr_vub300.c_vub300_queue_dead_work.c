
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vub300_mmc_host {int kref; int deadwork; } ;


 int deadworkqueue ;
 int kref_get (int *) ;
 int kref_put (int *,int ) ;
 scalar_t__ queue_work (int ,int *) ;
 int vub300_delete ;

__attribute__((used)) static void vub300_queue_dead_work(struct vub300_mmc_host *vub300)
{
 kref_get(&vub300->kref);
 if (queue_work(deadworkqueue, &vub300->deadwork)) {






 } else {





  kref_put(&vub300->kref, vub300_delete);
 }
}
