
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int VMCI_ERROR_INVALID_ARGS ;
 int VMCI_ERROR_OBSOLETE ;
 int VMCI_NOTIFICATION_CPT_STATE ;
 int VMCI_SUCCESS ;
 int VMCI_WELLKNOWN_CPT_STATE ;
 int pr_devel (char*,int,...) ;
 int pr_warn (char*) ;
 int vmci_ctx_add_notification (int,int) ;

int vmci_ctx_set_chkpt_state(u32 context_id,
        u32 cpt_type,
        u32 buf_size,
        void *cpt_buf)
{
 u32 i;
 u32 current_id;
 int result = VMCI_SUCCESS;
 u32 num_ids = buf_size / sizeof(u32);

 if (cpt_type == VMCI_WELLKNOWN_CPT_STATE && num_ids > 0) {




  pr_warn("Attempt to restore checkpoint with obsolete wellknown handles\n");
  return VMCI_ERROR_OBSOLETE;
 }

 if (cpt_type != VMCI_NOTIFICATION_CPT_STATE) {
  pr_devel("Invalid cpt state (type=%d)\n", cpt_type);
  return VMCI_ERROR_INVALID_ARGS;
 }

 for (i = 0; i < num_ids && result == VMCI_SUCCESS; i++) {
  current_id = ((u32 *)cpt_buf)[i];
  result = vmci_ctx_add_notification(context_id, current_id);
  if (result != VMCI_SUCCESS)
   break;
 }
 if (result != VMCI_SUCCESS)
  pr_devel("Failed to set cpt state (type=%d) (error=%d)\n",
    cpt_type, result);

 return result;
}
