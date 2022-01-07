
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int dummy; } ;
struct nfp_cpp_area {TYPE_2__* cpp; } ;
struct TYPE_4__ {TYPE_1__* op; } ;
struct TYPE_3__ {struct resource* (* area_resource ) (struct nfp_cpp_area*) ;} ;


 struct resource* stub1 (struct nfp_cpp_area*) ;

struct resource *nfp_cpp_area_resource(struct nfp_cpp_area *area)
{
 struct resource *res = ((void*)0);

 if (area->cpp->op->area_resource)
  res = area->cpp->op->area_resource(area);

 return res;
}
