
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_cpp_mutex {int dummy; } ;


 int kfree (struct nfp_cpp_mutex*) ;

void nfp_cpp_mutex_free(struct nfp_cpp_mutex *mutex)
{
 kfree(mutex);
}
