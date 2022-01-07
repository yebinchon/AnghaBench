
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_cpp_area {int mutex; } ;


 int __nfp_cpp_area_acquire (struct nfp_cpp_area*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int nfp_cpp_area_acquire(struct nfp_cpp_area *area)
{
 int ret;

 mutex_lock(&area->mutex);
 ret = __nfp_cpp_area_acquire(area);
 mutex_unlock(&area->mutex);

 return ret;
}
