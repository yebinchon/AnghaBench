
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_resource {int mutex; } ;


 int kfree (struct nfp_resource*) ;
 int nfp_cpp_mutex_free (int ) ;
 int nfp_cpp_mutex_unlock (int ) ;

void nfp_resource_release(struct nfp_resource *res)
{
 nfp_cpp_mutex_unlock(res->mutex);
 nfp_cpp_mutex_free(res->mutex);
 kfree(res);
}
