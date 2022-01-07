
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_cpp_area {int kref; } ;


 int __release_cpp_area ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void nfp_cpp_area_put(struct nfp_cpp_area *area)
{
 kref_put(&area->kref, __release_cpp_area);
}
