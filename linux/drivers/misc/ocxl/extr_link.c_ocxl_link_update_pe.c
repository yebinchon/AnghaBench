
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spa {int spa_lock; struct ocxl_process_element* spa_mem; } ;
struct ocxl_process_element {int tid; } ;
struct ocxl_link {int platform_data; struct spa* spa; } ;
typedef int __u16 ;


 int EINVAL ;
 int SPA_PASID_MAX ;
 int SPA_PE_MASK ;
 int WARN_ON (int) ;
 int cpu_to_be32 (int ) ;
 int mb () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pnv_ocxl_spa_remove_pe_from_cache (int ,int) ;

int ocxl_link_update_pe(void *link_handle, int pasid, __u16 tid)
{
 struct ocxl_link *link = (struct ocxl_link *) link_handle;
 struct spa *spa = link->spa;
 struct ocxl_process_element *pe;
 int pe_handle, rc;

 if (pasid > SPA_PASID_MAX)
  return -EINVAL;

 pe_handle = pasid & SPA_PE_MASK;
 pe = spa->spa_mem + pe_handle;

 mutex_lock(&spa->spa_lock);

 pe->tid = cpu_to_be32(tid);






 mb();






 rc = pnv_ocxl_spa_remove_pe_from_cache(link->platform_data, pe_handle);
 WARN_ON(rc);

 mutex_unlock(&spa->spa_lock);
 return rc;
}
