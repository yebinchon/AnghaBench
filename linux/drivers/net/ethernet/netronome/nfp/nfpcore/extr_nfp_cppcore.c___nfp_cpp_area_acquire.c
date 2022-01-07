
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfp_cpp_area {int refcount; TYPE_2__* cpp; } ;
struct TYPE_4__ {int waitq; TYPE_1__* op; } ;
struct TYPE_3__ {int area_acquire; } ;


 int atomic_dec (int *) ;
 int atomic_inc_return (int *) ;
 int nfp_cpp_area_acquire_try (struct nfp_cpp_area*,int*) ;
 int nfp_cpp_area_get (struct nfp_cpp_area*) ;
 int nfp_warn (TYPE_2__*,char*,int) ;
 int wait_event_interruptible (int ,int ) ;

__attribute__((used)) static int __nfp_cpp_area_acquire(struct nfp_cpp_area *area)
{
 int err, status;

 if (atomic_inc_return(&area->refcount) > 1)
  return 0;

 if (!area->cpp->op->area_acquire)
  return 0;

 err = wait_event_interruptible(area->cpp->waitq,
           nfp_cpp_area_acquire_try(area, &status));
 if (!err)
  err = status;
 if (err) {
  nfp_warn(area->cpp, "Warning: area wait failed: %d\n", err);
  atomic_dec(&area->refcount);
  return err;
 }

 nfp_cpp_area_get(area);

 return 0;
}
