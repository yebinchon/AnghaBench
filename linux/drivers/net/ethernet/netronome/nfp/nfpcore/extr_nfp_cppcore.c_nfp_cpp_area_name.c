
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* name; } ;
struct nfp_cpp_area {TYPE_1__ resource; } ;



const char *nfp_cpp_area_name(struct nfp_cpp_area *cpp_area)
{
 return cpp_area->resource.name;
}
