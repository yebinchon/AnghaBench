
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_cpp {int dummy; } ;


 int SZ_256K ;
 int SZ_64K ;
 int nfp_cpp_area_cache_add (struct nfp_cpp*,int ) ;

__attribute__((used)) static int nfp6000_init(struct nfp_cpp *cpp)
{
 nfp_cpp_area_cache_add(cpp, SZ_64K);
 nfp_cpp_area_cache_add(cpp, SZ_64K);
 nfp_cpp_area_cache_add(cpp, SZ_256K);

 return 0;
}
