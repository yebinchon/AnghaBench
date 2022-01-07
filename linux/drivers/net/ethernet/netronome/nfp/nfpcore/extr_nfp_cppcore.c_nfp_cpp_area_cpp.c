
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_cpp_area {struct nfp_cpp* cpp; } ;
struct nfp_cpp {int dummy; } ;



struct nfp_cpp *nfp_cpp_area_cpp(struct nfp_cpp_area *cpp_area)
{
 return cpp_area->cpp;
}
