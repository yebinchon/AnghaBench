
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_cpp_area {size_t size; } ;



size_t nfp_cpp_area_size(struct nfp_cpp_area *cpp_area)
{
 return cpp_area->size;
}
