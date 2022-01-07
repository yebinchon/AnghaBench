
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_cpp_area {int dummy; } ;
struct nfp_cpp {int dummy; } ;


 struct nfp_cpp_area* nfp_cpp_area_alloc_with_name (struct nfp_cpp*,int ,int *,unsigned long long,unsigned long) ;

struct nfp_cpp_area *
nfp_cpp_area_alloc(struct nfp_cpp *cpp, u32 dest,
     unsigned long long address, unsigned long size)
{
 return nfp_cpp_area_alloc_with_name(cpp, dest, ((void*)0), address, size);
}
