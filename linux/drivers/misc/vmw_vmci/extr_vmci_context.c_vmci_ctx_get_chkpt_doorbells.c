
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vmci_ctx {int doorbell_array; } ;
struct dbell_cpt_state {int handle; } ;


 int GFP_ATOMIC ;
 int VMCI_ERROR_MORE_DATA ;
 int VMCI_ERROR_NO_MEM ;
 int VMCI_SUCCESS ;
 struct dbell_cpt_state* kmalloc (size_t,int ) ;
 int vmci_handle_arr_get_entry (int ,int) ;
 int vmci_handle_arr_get_size (int ) ;

__attribute__((used)) static int vmci_ctx_get_chkpt_doorbells(struct vmci_ctx *context,
     u32 *buf_size, void **pbuf)
{
 struct dbell_cpt_state *dbells;
 u32 i, n_doorbells;

 n_doorbells = vmci_handle_arr_get_size(context->doorbell_array);
 if (n_doorbells > 0) {
  size_t data_size = n_doorbells * sizeof(*dbells);
  if (*buf_size < data_size) {
   *buf_size = data_size;
   return VMCI_ERROR_MORE_DATA;
  }

  dbells = kmalloc(data_size, GFP_ATOMIC);
  if (!dbells)
   return VMCI_ERROR_NO_MEM;

  for (i = 0; i < n_doorbells; i++)
   dbells[i].handle = vmci_handle_arr_get_entry(
      context->doorbell_array, i);

  *buf_size = data_size;
  *pbuf = dbells;
 } else {
  *buf_size = 0;
  *pbuf = ((void*)0);
 }

 return VMCI_SUCCESS;
}
