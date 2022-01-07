
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_cpp_area {int dummy; } ;
struct nfp_cpp {int dummy; } ;


 scalar_t__ nfp_cpp_area_acquire (struct nfp_cpp_area*) ;
 struct nfp_cpp_area* nfp_cpp_area_alloc_with_name (struct nfp_cpp*,int ,char const*,unsigned long long,unsigned long) ;
 int nfp_cpp_area_free (struct nfp_cpp_area*) ;

struct nfp_cpp_area *
nfp_cpp_area_alloc_acquire(struct nfp_cpp *cpp, const char *name, u32 dest,
      unsigned long long address, unsigned long size)
{
 struct nfp_cpp_area *area;

 area = nfp_cpp_area_alloc_with_name(cpp, dest, name, address, size);
 if (!area)
  return ((void*)0);

 if (nfp_cpp_area_acquire(area)) {
  nfp_cpp_area_free(area);
  return ((void*)0);
 }

 return area;
}
