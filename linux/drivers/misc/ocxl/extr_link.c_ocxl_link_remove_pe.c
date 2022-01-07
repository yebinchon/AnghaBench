
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spa {int spa_lock; int pe_tree; struct ocxl_process_element* spa_mem; } ;
struct pe_data {scalar_t__ mm; } ;
struct ocxl_process_element {int tid; int pid; int software_state; } ;
struct ocxl_link {int platform_data; struct spa* spa; } ;
struct TYPE_2__ {int pid; } ;


 int EINVAL ;
 int SPA_PASID_MAX ;
 int SPA_PE_MASK ;
 int SPA_PE_VALID ;
 int WARN (int,char*) ;
 int WARN_ON (int) ;
 int be32_to_cpu (int ) ;
 TYPE_1__* current ;
 int kfree_rcu (struct pe_data*,int ) ;
 int mb () ;
 int memset (struct ocxl_process_element*,int ,int) ;
 int mm_context_remove_copro (scalar_t__) ;
 int mmdrop (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pnv_ocxl_spa_remove_pe_from_cache (int ,int) ;
 struct pe_data* radix_tree_delete (int *,int) ;
 int rcu ;
 int trace_ocxl_context_remove (int ,struct ocxl_process_element*,int,int,int) ;

int ocxl_link_remove_pe(void *link_handle, int pasid)
{
 struct ocxl_link *link = (struct ocxl_link *) link_handle;
 struct spa *spa = link->spa;
 struct ocxl_process_element *pe;
 struct pe_data *pe_data;
 int pe_handle, rc;

 if (pasid > SPA_PASID_MAX)
  return -EINVAL;
 pe_handle = pasid & SPA_PE_MASK;
 pe = spa->spa_mem + pe_handle;

 mutex_lock(&spa->spa_lock);

 if (!(be32_to_cpu(pe->software_state) & SPA_PE_VALID)) {
  rc = -EINVAL;
  goto unlock;
 }

 trace_ocxl_context_remove(current->pid, spa->spa_mem, pasid,
    be32_to_cpu(pe->pid), be32_to_cpu(pe->tid));

 memset(pe, 0, sizeof(struct ocxl_process_element));





 mb();






 rc = pnv_ocxl_spa_remove_pe_from_cache(link->platform_data, pe_handle);
 WARN_ON(rc);

 pe_data = radix_tree_delete(&spa->pe_tree, pe_handle);
 if (!pe_data) {
  WARN(1, "Couldn't find pe data when removing PE\n");
 } else {
  if (pe_data->mm) {
   mm_context_remove_copro(pe_data->mm);
   mmdrop(pe_data->mm);
  }
  kfree_rcu(pe_data, rcu);
 }
unlock:
 mutex_unlock(&spa->spa_lock);
 return rc;
}
