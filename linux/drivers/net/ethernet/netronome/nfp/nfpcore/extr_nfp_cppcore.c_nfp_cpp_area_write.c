
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfp_cpp_area {TYPE_2__* cpp; } ;
struct TYPE_4__ {TYPE_1__* op; } ;
struct TYPE_3__ {int (* area_write ) (struct nfp_cpp_area*,void const*,unsigned long,size_t) ;} ;


 int stub1 (struct nfp_cpp_area*,void const*,unsigned long,size_t) ;

int nfp_cpp_area_write(struct nfp_cpp_area *area,
         unsigned long offset, const void *kernel_vaddr,
         size_t length)
{
 return area->cpp->op->area_write(area, kernel_vaddr, offset, length);
}
