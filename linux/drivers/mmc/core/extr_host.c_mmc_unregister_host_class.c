
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int class_unregister (int *) ;
 int mmc_host_class ;

void mmc_unregister_host_class(void)
{
 class_unregister(&mmc_host_class);
}
