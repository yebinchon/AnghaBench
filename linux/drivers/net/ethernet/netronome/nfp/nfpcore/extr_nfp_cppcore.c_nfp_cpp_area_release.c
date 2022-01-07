
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfp_cpp_area {int mutex; TYPE_2__* cpp; int refcount; } ;
struct TYPE_4__ {int waitq; TYPE_1__* op; } ;
struct TYPE_3__ {int (* area_release ) (struct nfp_cpp_area*) ;} ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nfp_cpp_area_put (struct nfp_cpp_area*) ;
 int stub1 (struct nfp_cpp_area*) ;
 int wake_up_interruptible_all (int *) ;

void nfp_cpp_area_release(struct nfp_cpp_area *area)
{
 mutex_lock(&area->mutex);

 if (atomic_dec_and_test(&area->refcount)) {
  if (area->cpp->op->area_release) {
   area->cpp->op->area_release(area);

   wake_up_interruptible_all(&area->cpp->waitq);
  }
 }
 mutex_unlock(&area->mutex);

 nfp_cpp_area_put(area);
}
