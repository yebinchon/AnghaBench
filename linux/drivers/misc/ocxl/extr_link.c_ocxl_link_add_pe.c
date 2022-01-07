
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct spa {int spa_lock; struct ocxl_process_element* spa_mem; int pe_tree; } ;
struct pe_data {void (* xsl_err_cb ) (void*,int ,int ) ;void* xsl_err_data; struct mm_struct* mm; } ;
struct ocxl_process_element {void* software_state; void* amr; void* tid; void* pid; void* lpid; void* config_state; } ;
struct ocxl_link {struct spa* spa; } ;
struct mm_struct {int dummy; } ;
struct TYPE_2__ {int pid; } ;


 int BUILD_BUG_ON (int) ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SPA_PASID_MAX ;
 int SPA_PE_MASK ;
 int SPA_PE_VALID ;
 int SPRN_LPID ;
 int calculate_cfg_state (int) ;
 void* cpu_to_be32 (int ) ;
 void* cpu_to_be64 (int ) ;
 TYPE_1__* current ;
 struct pe_data* kmalloc (int,int ) ;
 int mb () ;
 int memset (struct ocxl_process_element*,int ,int) ;
 int mfspr (int ) ;
 int mm_context_add_copro (struct mm_struct*) ;
 int mmgrab (struct mm_struct*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radix_tree_insert (int *,int,struct pe_data*) ;
 int trace_ocxl_context_add (int ,struct ocxl_process_element*,int,int ,int ) ;

int ocxl_link_add_pe(void *link_handle, int pasid, u32 pidr, u32 tidr,
  u64 amr, struct mm_struct *mm,
  void (*xsl_err_cb)(void *data, u64 addr, u64 dsisr),
  void *xsl_err_data)
{
 struct ocxl_link *link = (struct ocxl_link *) link_handle;
 struct spa *spa = link->spa;
 struct ocxl_process_element *pe;
 int pe_handle, rc = 0;
 struct pe_data *pe_data;

 BUILD_BUG_ON(sizeof(struct ocxl_process_element) != 128);
 if (pasid > SPA_PASID_MAX)
  return -EINVAL;

 mutex_lock(&spa->spa_lock);
 pe_handle = pasid & SPA_PE_MASK;
 pe = spa->spa_mem + pe_handle;

 if (pe->software_state) {
  rc = -EBUSY;
  goto unlock;
 }

 pe_data = kmalloc(sizeof(*pe_data), GFP_KERNEL);
 if (!pe_data) {
  rc = -ENOMEM;
  goto unlock;
 }

 pe_data->mm = mm;
 pe_data->xsl_err_cb = xsl_err_cb;
 pe_data->xsl_err_data = xsl_err_data;

 memset(pe, 0, sizeof(struct ocxl_process_element));
 pe->config_state = cpu_to_be64(calculate_cfg_state(pidr == 0));
 pe->lpid = cpu_to_be32(mfspr(SPRN_LPID));
 pe->pid = cpu_to_be32(pidr);
 pe->tid = cpu_to_be32(tidr);
 pe->amr = cpu_to_be64(amr);
 pe->software_state = cpu_to_be32(SPA_PE_VALID);






 if (mm)
  mm_context_add_copro(mm);





 mb();
 radix_tree_insert(&spa->pe_tree, pe_handle, pe_data);
 if (mm)
  mmgrab(mm);
 trace_ocxl_context_add(current->pid, spa->spa_mem, pasid, pidr, tidr);
unlock:
 mutex_unlock(&spa->spa_lock);
 return rc;
}
