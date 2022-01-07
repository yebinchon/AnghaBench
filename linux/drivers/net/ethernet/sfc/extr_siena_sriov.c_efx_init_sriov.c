
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int create_singlethread_workqueue (char*) ;
 int vfdi_workqueue ;

int efx_init_sriov(void)
{




 vfdi_workqueue = create_singlethread_workqueue("sfc_vfdi");
 if (!vfdi_workqueue)
  return -ENOMEM;
 return 0;
}
