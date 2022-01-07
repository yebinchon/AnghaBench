
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_workqueue (int ) ;
 int vfdi_workqueue ;

void efx_fini_sriov(void)
{
 destroy_workqueue(vfdi_workqueue);
}
