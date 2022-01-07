
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_cpp_area {int dummy; } ;


 int nfp_cpp_area_free (struct nfp_cpp_area*) ;
 int nfp_cpp_area_release (struct nfp_cpp_area*) ;

void nfp_cpp_area_release_free(struct nfp_cpp_area *area)
{
 nfp_cpp_area_release(area);
 nfp_cpp_area_free(area);
}
