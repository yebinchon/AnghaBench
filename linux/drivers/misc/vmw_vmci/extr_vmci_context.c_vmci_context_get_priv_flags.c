
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vmci_ctx {int priv_flags; } ;


 int VMCI_LEAST_PRIVILEGE_FLAGS ;
 int VMCI_NO_PRIVILEGE_FLAGS ;
 struct vmci_ctx* vmci_ctx_get (int ) ;
 int vmci_ctx_put (struct vmci_ctx*) ;
 scalar_t__ vmci_host_code_active () ;

u32 vmci_context_get_priv_flags(u32 context_id)
{
 if (vmci_host_code_active()) {
  u32 flags;
  struct vmci_ctx *context;

  context = vmci_ctx_get(context_id);
  if (!context)
   return VMCI_LEAST_PRIVILEGE_FLAGS;

  flags = context->priv_flags;
  vmci_ctx_put(context);
  return flags;
 }
 return VMCI_NO_PRIVILEGE_FLAGS;
}
