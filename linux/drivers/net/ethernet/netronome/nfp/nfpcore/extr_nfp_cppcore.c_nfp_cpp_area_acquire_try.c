
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfp_cpp_area {TYPE_2__* cpp; } ;
struct TYPE_4__ {TYPE_1__* op; } ;
struct TYPE_3__ {int (* area_acquire ) (struct nfp_cpp_area*) ;} ;


 int EAGAIN ;
 int stub1 (struct nfp_cpp_area*) ;

__attribute__((used)) static bool nfp_cpp_area_acquire_try(struct nfp_cpp_area *area, int *status)
{
 *status = area->cpp->op->area_acquire(area);

 return *status != -EAGAIN;
}
