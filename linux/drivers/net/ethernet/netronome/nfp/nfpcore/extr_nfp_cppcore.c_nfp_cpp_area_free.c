
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_cpp_area {int cpp; int refcount; } ;


 scalar_t__ atomic_read (int *) ;
 int nfp_cpp_area_put (struct nfp_cpp_area*) ;
 int nfp_warn (int ,char*) ;

void nfp_cpp_area_free(struct nfp_cpp_area *area)
{
 if (atomic_read(&area->refcount))
  nfp_warn(area->cpp, "Warning: freeing busy area\n");
 nfp_cpp_area_put(area);
}
