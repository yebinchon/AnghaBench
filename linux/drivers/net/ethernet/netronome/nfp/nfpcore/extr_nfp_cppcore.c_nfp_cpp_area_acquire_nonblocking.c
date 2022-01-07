
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfp_cpp_area {int mutex; int refcount; TYPE_2__* cpp; } ;
struct TYPE_4__ {TYPE_1__* op; } ;
struct TYPE_3__ {int (* area_acquire ) (struct nfp_cpp_area*) ;} ;


 int atomic_dec (int *) ;
 int atomic_inc_return (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nfp_cpp_area_get (struct nfp_cpp_area*) ;
 int stub1 (struct nfp_cpp_area*) ;

int nfp_cpp_area_acquire_nonblocking(struct nfp_cpp_area *area)
{
 mutex_lock(&area->mutex);
 if (atomic_inc_return(&area->refcount) == 1) {
  if (area->cpp->op->area_acquire) {
   int err;

   err = area->cpp->op->area_acquire(area);
   if (err < 0) {
    atomic_dec(&area->refcount);
    mutex_unlock(&area->mutex);
    return err;
   }
  }
 }
 mutex_unlock(&area->mutex);

 nfp_cpp_area_get(area);
 return 0;
}
