
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_cpp_area {int kref; } ;


 int kref_get (int *) ;

__attribute__((used)) static struct nfp_cpp_area *nfp_cpp_area_get(struct nfp_cpp_area *area)
{
 kref_get(&area->kref);

 return area;
}
