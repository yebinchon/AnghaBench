
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfp_cpp_area {TYPE_2__* cpp; } ;
typedef int phys_addr_t ;
struct TYPE_4__ {TYPE_1__* op; } ;
struct TYPE_3__ {int (* area_phys ) (struct nfp_cpp_area*) ;} ;


 int stub1 (struct nfp_cpp_area*) ;

phys_addr_t nfp_cpp_area_phys(struct nfp_cpp_area *area)
{
 phys_addr_t addr = ~0;

 if (area->cpp->op->area_phys)
  addr = area->cpp->op->area_phys(area);

 return addr;
}
